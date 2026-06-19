# Brilha Mais ✨

O **Brilha Mais** é um sistema corporativo e gamificado desenvolvido para acompanhamento de desempenho técnico, visualização de metas (SLA, Reincidência, Perdas) e gestão de campanhas de incentivo para as equipes de atendimento e suporte.

O sistema processa chamados e métricas diretamente na base de dados, permitindo que os técnicos visualizem de forma transparente como o seu trabalho reflete na pontuação geral da equipe e de sua regional.

## 🛠️ Tecnologias Utilizadas

- **Frontend:** React + TypeScript, Vite, TailwindCSS, Zustand (State Management), Recharts (Gráficos)
- **Backend:** Java 21, Spring Boot, Spring Security (JWT), Spring Data JPA, Flyway (Migrations)
- **Ingestão de Dados:** Python, FastAPI, Pandas (Upload e processamento incremental de dados)
- **Banco de Dados:** PostgreSQL (Hospedado via Supabase)
- **Infraestrutura:** Docker & Docker Compose

---

## 🔒 Variáveis de Ambiente e Segurança

Por questões de segurança, **as credenciais do sistema não são versionadas**.
Antes de iniciar o projeto pela primeira vez, você precisa configurar seu arquivo de ambiente local.

1. Na raiz do projeto, copie o arquivo de exemplo:
   ```bash
   cp .env.example .env
   ```
2. Abra o arquivo `.env` gerado e preencha com as senhas e credenciais corretas do Supabase fornecidas pela equipe, e defina uma chave hexadecimal secreta em `JWT_SECRET`.

---

## 🚀 Como iniciar o projeto localmente

A maneira mais fácil e recomendada de iniciar a aplicação com toda sua arquitetura (Backend, Frontend e Ingestão) é através do **Docker Compose**.

### Pré-requisitos:
- Docker e Docker Compose instalados.
- Arquivo `.env` preenchido na raiz do projeto.

### Subindo os contêineres:

Na raiz do projeto, rode o comando:
```bash
docker-compose up --build -d
```

O Docker criará 3 instâncias conectadas:
- 🌐 **Frontend (React):** Acessível em `http://localhost:3000`
- ⚙️ **Backend API (Spring Boot):** Acessível em `http://localhost:8080`
- 📊 **Ingestão API (Python FastAPI):** Acessível em `http://localhost:8001`

*(Se precisar desligar a aplicação, use `docker-compose down`)*

---

## 👑 Controle de Acesso (RBAC)

O sistema Brilha+ conta com níveis de acesso estruturados via banco de dados (`tb_tecnico.role`):

1. **Padrão:** Visão exclusiva do técnico para suas métricas e comparativos.
2. **Administrador:** Visão gerencial sobre equipes e dashboards táticos *(em desenvolvimento)*.
3. **Moderador:** Acesso total. Apenas Moderadores possuem acesso à engrenagem de configurações na interface para visualizar o **Painel de Ingestão**.

### 📥 Ingestão Incremental

No painel de configurações (disponível apenas para Moderadores), os dados operacionais (SLA, Peças, Reincidências e Encerrados) podem ser submetidos mês a mês no formato `.xlsx`. O Python FastAPI recebe as planilhas e aplica inserções baseadas em `ON CONFLICT DO NOTHING`, garantindo que os dados não sejam duplicados e preservando o histórico da aplicação de forma contínua.
