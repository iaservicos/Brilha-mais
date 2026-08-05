package br.com.positivo.brilhamais.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequiredArgsConstructor
public class HealthController {

    @GetMapping({"/", "/health"})
    public ResponseEntity<?> checkStatus(@RequestHeader(value = HttpHeaders.ACCEPT, required = false) String acceptHeader) {
        boolean isHtmlRequested = acceptHeader != null && acceptHeader.contains(MediaType.TEXT_HTML_VALUE);

        if (isHtmlRequested) {
            String html = buildStyledLandingHtml();
            return ResponseEntity.ok().contentType(MediaType.TEXT_HTML).body(html);
        }

        Map<String, Object> response = new LinkedHashMap<>();
        response.put("status", "UP");
        response.put("servico", "Brilha+ Backend API");
        response.put("mensagem", "🚀 A API do sistema Brilha+ está 100% ONLINE e pronta para uso.");

        return ResponseEntity.ok().contentType(MediaType.APPLICATION_JSON).body(response);
    }

    private String buildStyledLandingHtml() {
        return "<!DOCTYPE html>"
            + "<html lang='pt-BR'>"
            + "<head>"
            + "<meta charset='UTF-8'>"
            + "<meta name='viewport' content='width=device-width, initial-scale=1.0'>"
            + "<title>Brilha+ API Server</title>"
            + "<link rel='preconnect' href='https://fonts.googleapis.com'>"
            + "<link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>"
            + "<link href='https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;600;700;800&display=swap' rel='stylesheet'>"
            + "<style>"
            + "  * { box-sizing: border-box; margin: 0; padding: 0; }"
            + "  body { min-height: 100vh; display: flex; align-items: center; justify-content: center; background: #070a12; font-family: 'Plus Jakarta Sans', sans-serif; color: #f8fafc; padding: 20px; overflow: hidden; position: relative; }"
            + "  .bg-glow-1 { position: absolute; top: -100px; left: -100px; width: 400px; height: 400px; background: radial-gradient(circle, rgba(14, 165, 233, 0.25) 0%, rgba(0,0,0,0) 70%); filter: blur(60px); pointer-events: none; }"
            + "  .bg-glow-2 { position: absolute; bottom: -100px; right: -100px; width: 400px; height: 400px; background: radial-gradient(circle, rgba(99, 102, 241, 0.25) 0%, rgba(0,0,0,0) 70%); filter: blur(60px); pointer-events: none; }"
            + "  .card { background: rgba(15, 23, 42, 0.75); backdrop-filter: blur(16px); -webkit-backdrop-filter: blur(16px); border: 1px solid rgba(255, 255, 255, 0.1); border-radius: 24px; padding: 48px 40px; max-width: 520px; width: 100%; text-align: center; box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.7); position: relative; z-index: 10; transform: translateY(0); transition: all 0.3s ease; }"
            + "  .icon-container { width: 72px; height: 72px; background: linear-gradient(135deg, #0ea5e9 0%, #6366f1 100%); border-radius: 20px; display: flex; align-items: center; justify-content: center; margin: 0 auto 24px auto; box-shadow: 0 10px 25px -5px rgba(14, 165, 233, 0.4); font-size: 32px; }"
            + "  .badge { display: inline-flex; align-items: center; gap: 8px; padding: 8px 18px; border-radius: 9999px; background: rgba(16, 185, 129, 0.12); border: 1px solid rgba(16, 185, 129, 0.3); color: #34d399; font-weight: 700; font-size: 13px; letter-spacing: 0.5px; text-transform: uppercase; margin-bottom: 24px; }"
            + "  .pulse { width: 8px; height: 8px; background: #34d399; border-radius: 50%; box-shadow: 0 0 12px #34d399; animation: pulse-animation 2s infinite; }"
            + "  @keyframes pulse-animation { 0% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(52, 211, 153, 0.7); } 70% { transform: scale(1); box-shadow: 0 0 0 10px rgba(52, 211, 153, 0); } 100% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(52, 211, 153, 0); } }"
            + "  h1 { font-size: 26px; font-weight: 800; margin-bottom: 12px; background: linear-gradient(180deg, #ffffff 0%, #cbd5e1 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; line-height: 1.3; }"
            + "  p { color: #94a3b8; font-size: 15px; line-height: 1.6; margin-bottom: 32px; font-weight: 400; }"
            + "  .footer-tag { padding-top: 20px; border-top: 1px solid rgba(255, 255, 255, 0.08); font-size: 12px; color: #64748b; font-weight: 600; display: flex; justify-content: space-between; align-items: center; }"
            + "  .footer-tag span { color: #38bdf8; font-weight: 700; }"
            + "</style>"
            + "</head>"
            + "<body>"
            + "  <div class='bg-glow-1'></div>"
            + "  <div class='bg-glow-2'></div>"
            + "  <div class='card'>"
            + "    <div class='icon-container'>✨</div>"
            + "    <div class='badge'>"
            + "      <div class='pulse'></div>"
            + "      SERVIDORES OPERACIONAIS"
            + "    </div>"
            + "    <h1>Brilha+ API Backend</h1>"
            + "    <p>O servidor backend está 100% online, configurado e pronto para receber requisições de produção e testes.</p>"
            + "    <div class='footer-tag'>"
            + "      <div>Status: <span>Pronto para Uso</span></div>"
            + "      <div>Ambiente: <span>Render Cloud</span></div>"
            + "    </div>"
            + "  </div>"
            + "</body>"
            + "</html>";
    }
}
