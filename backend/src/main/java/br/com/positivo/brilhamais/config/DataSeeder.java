package br.com.positivo.brilhamais.config;

import br.com.positivo.brilhamais.models.Tecnico;
import br.com.positivo.brilhamais.repositories.TecnicoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import br.com.positivo.brilhamais.repositories.ApuracaoMensalRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Value;

@Component
@RequiredArgsConstructor
public class DataSeeder implements CommandLineRunner {

    private final TecnicoRepository tecnicoRepository;
    private final ApuracaoMensalRepository apuracaoMensalRepository;
    private final PasswordEncoder passwordEncoder;
    private final org.springframework.jdbc.core.JdbcTemplate jdbcTemplate;

    @Value("${ADMIN_MATRICULA:72916}")
    private String adminMatricula;

    @Value("${ADMIN_PASSWORD:admin}")
    private String adminPassword;

    @Override
    @Transactional
    public void run(String... args) throws Exception {
        // Criar ou Atualizar usuário master
        Tecnico admin = tecnicoRepository.findByMatricula(adminMatricula).orElse(null);
        if (admin == null) {
            admin = Tecnico.builder()
                    .matricula(adminMatricula)
                    .nomeCompleto("Administrador Master")
                    .ativo(true)
                    .build();
        }

        // Forçar as credenciais e cargo de admin
        admin.setSenha(passwordEncoder.encode(adminPassword));
        admin.setCargo("Administrador");
        admin.setIsPrimeiroAcesso(false);
        tecnicoRepository.save(admin);
        System.out.println("✅ Usuário Master (" + adminMatricula + ") configurado com segurança!");
    }
}
