usuario adm com acesso as rota = usuario - senha123

Client Registration System Sistema de cadastro de clientes completo, com as seguintes tecnologias:

Java 8 (JDK + JRE)

Maven 3.9.9

Wildfly (Deployment do Frontend WAR)

Spring Boot (Backend API)

Docker + Docker Compose (Banco de dados)

📦 Pré-requisitos Antes de rodar o projeto, certifique-se de ter instalado:

Software Versão recomendada Java JDK 1.8 >= 1.8.0_202 Apache Maven 3.9.9 Docker 24.x Docker Compose 2.x Wildfly Configurado pelo bat frontDeployWildfly

⚠️ Caso ocorra algum problema com o JDK, instale também o JRE 1.8.

🚀 Passo a Passo para rodar o projeto 1️⃣ Instalar e configurar o Maven Execute o script .bat maven para copiar e configurar o Maven:

Esse script:

Copia a pasta apache-maven-3.9.9 para C:\

Configura as variáveis de ambiente MAVEN_HOME e PATH (temporariamente)

2️⃣ Build do Frontend (client-reg-sys) Compile e instale o frontend com Maven:

mvn clean install no caminho client-registration-system\client-reg-sys 📝 O módulo client-reg-sys é o frontend em formato .war.

3️⃣ Subir o Banco de Dados (Docker Compose) Levante o ambiente do banco:

docker-compose up -d --build Isso irá:

Criar e iniciar containers com o banco de dados necessário para a aplicação.

4️⃣ Deploy do Frontend no Wildfly Execute o script para fazer o deploy do WAR no Wildfly:

frontDeployWildfly.bat Esse script roda:

mvn wildfly:deploy no caminho client-registration-system\client-reg-sys e faz o deploy do arquivo .war gerado no passo 2.

5️⃣ Rodar a API Backend (Spring Boot) Execute diretamente a classe principal da API:

run CadastroApiApplication(VScodeReadyForJava) Essa aplicação fica fora da pasta /java e é a responsável pela API do sistema.

🧪 Testes de Verificação Após todos os serviços estarem rodando, você pode:

Acessar o Frontend via navegador.

Verificar se a API responde (ex: http://localhost:8080/api/clients).

🗒️ Observações Caso precise reinstalar ou reconfigurar o JDK/JRE, revise as variáveis de ambiente (JAVA_HOME, PATH).

O deploy do WAR no Wildfly depende do servidor estar configurado corretamente.

O Docker Compose deve estar ativo para o banco funcionar.