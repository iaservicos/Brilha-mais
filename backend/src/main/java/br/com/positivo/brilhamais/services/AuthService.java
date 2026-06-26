package br.com.positivo.brilhamais.services;

import br.com.positivo.brilhamais.dto.*;
import br.com.positivo.brilhamais.models.Tecnico;
import br.com.positivo.brilhamais.repositories.TecnicoRepository;
import br.com.positivo.brilhamais.repositories.SupervisorRepository;
import br.com.positivo.brilhamais.models.Supervisor;
import org.springframework.jdbc.core.JdbcTemplate;
import br.com.positivo.brilhamais.security.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final TecnicoRepository repository;
    private final SupervisorRepository supervisorRepository;
    private final JdbcTemplate jdbcTemplate;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;

    public AuthResponse login(AuthRequest request) {
        // Authenticate the user credentials
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        request.getMatricula(),
                        request.getSenha()
                )
        );

        var tecnicoOpt = repository.findByMatricula(request.getMatricula());

        if (tecnicoOpt.isPresent()) {
            var tecnico = tecnicoOpt.get();
            var accessToken = jwtService.generateToken(tecnico);
            var refreshToken = jwtService.generateRefreshToken(tecnico);

            String estado = null;
            if (tecnico.getCtBase() != null && !tecnico.getCtBase().isEmpty()) {
                estado = repository.findEstadoByCtBase(tecnico.getCtBase());
            }

            return AuthResponse.builder()
                    .accessToken(accessToken)
                    .refreshToken(refreshToken)
                    .isPrimeiroAcesso(tecnico.getIsPrimeiroAcesso())
                    .nome(tecnico.getNomeCompleto())
                    .cargo(tecnico.getCargo())
                    .localEquipe(estado != null ? estado : tecnico.getCtBase())
                    .role(tecnico.getRole() != null ? tecnico.getRole() : "PADRAO")
                    .build();
        } else {
            var supervisor = supervisorRepository.findByMatricula(request.getMatricula())
                    .orElseThrow(() -> new RuntimeException("Usuário não encontrado"));

            var accessToken = jwtService.generateToken(supervisor);
            var refreshToken = jwtService.generateRefreshToken(supervisor);

            // Busca as bases que este supervisor gerencia
            java.util.List<String> bases = jdbcTemplate.queryForList(
                "SELECT ct_codigo FROM tb_base_atp WHERE UPPER(supervisor) = ?", 
                String.class, 
                supervisor.getNomeCompleto().toUpperCase()
            );
            String ctBases = String.join(",", bases);

            return AuthResponse.builder()
                    .accessToken(accessToken)
                    .refreshToken(refreshToken)
                    .isPrimeiroAcesso(supervisor.getIsPrimeiroAcesso())
                    .nome(supervisor.getNomeCompleto())
                    .cargo("Supervisor")
                    .localEquipe(ctBases) // Múltiplas bases
                    .role(supervisor.getRole() != null ? supervisor.getRole() : "ADMINISTRADOR")
                    .build();
        }
    }

    public void changePassword(String matricula, String novaSenha) {
        var tecnicoOpt = repository.findByMatricula(matricula);
        if (tecnicoOpt.isPresent()) {
            var tecnico = tecnicoOpt.get();
            tecnico.setSenha(passwordEncoder.encode(novaSenha));
            tecnico.setIsPrimeiroAcesso(false);
            repository.save(tecnico);
        } else {
            var supervisor = supervisorRepository.findByMatricula(matricula)
                    .orElseThrow(() -> new RuntimeException("Usuário não encontrado"));
            supervisor.setSenha(passwordEncoder.encode(novaSenha));
            supervisor.setIsPrimeiroAcesso(false);
            supervisorRepository.save(supervisor);
        }
    }

    public VerificarTecnicoResponse verificarTecnico(VerificarTecnicoRequest request) {
        String estadoFormatado = request.getEstado().trim().toUpperCase();
        
        var tecnicoOpt = repository.findByNomeAndEstadoNative(
                request.getNome().trim(), estadoFormatado
        );

        if (tecnicoOpt.isPresent()) {
            var tecnico = tecnicoOpt.get();
            if (tecnico.getMatricula() != null && !tecnico.getMatricula().trim().isEmpty()) {
                throw new RuntimeException("O Nome ja possui senha cadastrada. Procure seu gestor em caso de duvidas");
            }
            return VerificarTecnicoResponse.builder()
                    .id(tecnico.getIdTecnico())
                    .nomeCompleto(tecnico.getNomeCompleto())
                    .ctBase(tecnico.getCtBase())
                    .build();
        } else {
            var supervisor = supervisorRepository.findByNomeCompleto(request.getNome().trim())
                    .orElseThrow(() -> new RuntimeException("O Nome ou Estado divergente. Procure seu gestor."));
            
            if (supervisor.getMatricula() != null && !supervisor.getMatricula().trim().isEmpty()) {
                throw new RuntimeException("O Nome ja possui senha cadastrada. Procure seu gestor em caso de duvidas");
            }
            return VerificarTecnicoResponse.builder()
                    .id(supervisor.getIdSupervisor() * -1) // Truque matemático para diferenciar supervisor no vincularMatricula
                    .nomeCompleto(supervisor.getNomeCompleto())
                    .ctBase("GESTÃO")
                    .build();
        }
    }

    public AuthResponse vincularMatricula(VincularMatriculaRequest request) {
        if (request.getId() < 0) {
            // É um supervisor
            int supId = Math.abs(request.getId());
            var supervisor = supervisorRepository.findById(supId)
                    .orElseThrow(() -> new RuntimeException("Supervisor não encontrado"));
            
            if (supervisorRepository.findByMatricula(request.getMatricula()).isPresent()) {
                throw new RuntimeException("A matrícula informada já está em uso.");
            }

            supervisor.setMatricula(request.getMatricula());
            supervisor.setIsPrimeiroAcesso(true);
            supervisorRepository.save(supervisor);

            var accessToken = jwtService.generateToken(supervisor);
            var refreshToken = jwtService.generateRefreshToken(supervisor);

            java.util.List<String> bases = jdbcTemplate.queryForList(
                "SELECT ct_codigo FROM tb_base_atp WHERE UPPER(supervisor) = ?", 
                String.class, 
                supervisor.getNomeCompleto().toUpperCase()
            );
            String ctBases = String.join(",", bases);

            return AuthResponse.builder()
                    .accessToken(accessToken)
                    .refreshToken(refreshToken)
                    .isPrimeiroAcesso(supervisor.getIsPrimeiroAcesso())
                    .nome(supervisor.getNomeCompleto())
                    .cargo("Supervisor")
                    .localEquipe(ctBases)
                    .role(supervisor.getRole() != null ? supervisor.getRole() : "ADMINISTRADOR")
                    .build();
        }

        var tecnico = repository.findById(request.getId())
                .orElseThrow(() -> new RuntimeException("Técnico não encontrado"));

        if (repository.findByMatricula(request.getMatricula()).isPresent()) {
            throw new RuntimeException("A matrícula informada já está em uso.");
        }

        tecnico.setMatricula(request.getMatricula());
        tecnico.setIsPrimeiroAcesso(true); 
        repository.save(tecnico);

        var accessToken = jwtService.generateToken(tecnico);
        var refreshToken = jwtService.generateRefreshToken(tecnico);

        String estado = null;
        if (tecnico.getCtBase() != null && !tecnico.getCtBase().isEmpty()) {
            estado = repository.findEstadoByCtBase(tecnico.getCtBase());
        }

        return AuthResponse.builder()
                .accessToken(accessToken)
                .refreshToken(refreshToken)
                .isPrimeiroAcesso(tecnico.getIsPrimeiroAcesso())
                .nome(tecnico.getNomeCompleto())
                .cargo(tecnico.getCargo())
                .localEquipe(estado != null ? estado : tecnico.getCtBase())
                .role(tecnico.getRole() != null ? tecnico.getRole() : "PADRAO")
                .build();
    }
}
