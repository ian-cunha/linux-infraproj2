# 🛠️ Projeto: Provisionamento de Servidor Web com Bash (IaC)

Este script automatiza o provisionamento de um servidor web Apache em um host Linux, seguindo o conceito de **Infraestrutura como Código (IaC)**. Ideal para ambientes onde você precisa configurar rapidamente um servidor web e fazer o deploy de uma aplicação estática.

## 📄 Descrição

O script executa as seguintes etapas:

1. Atualiza os repositórios do sistema:
   ```bash
   apt update && apt upgrade -y
   ```
2. Instala o servidor Apache e a ferramenta de descompactação:
   ```bash
   apt install apache2 -y
   apt install unzip -y
   ```
3. Realiza o download do código-fonte da aplicação  
   (repositório [mochila-de-viagem](https://github.com/ian-cunha/mochila-de-viagem)):
   ```bash
   wget https://github.com/ian-cunha/mochila-de-viagem/archive/refs/heads/main.zip
   ```
4. Descompacta o pacote e copia todos os arquivos para o diretório padrão do Apache:
   ```bash
   unzip main.zip
   cp -R mochila-de-viagem-main/* /var/www/html/
   ```
5. Exibe mensagens de log para acompanhamento de cada etapa.

## 🧰 Pré-requisitos

- Distribuição Linux baseada em Debian/Ubuntu.  
- Permissões de superusuário (sudo/root).  
- Conexão ativa com a internet.

## 🚀 Como executar

1. **Clone este repositório** (substitua `<url-do-repo>` pela URL real):
   ```bash
   git clone <url-do-repo>
   cd <nome-do-diretório>
   ```
2. **Torne o script executável**:
   ```bash
   chmod +x infra-webserver.sh
   ```
3. **Execute o script** com privilégios de root:
   ```bash
   sudo ./infra-webserver.sh
   ```
4. Após a conclusão, abra o navegador e acesse:
   ```
   http://<endereço-do-servidor>/
   ```
   para verificar a aplicação.

## 🔧 Customizações

- **URL da aplicação**: altere a linha do `wget` dentro do script para apontar para outro repositório.  
- **Diretório de deploy**: ajuste o caminho em `cp -R` se desejar outro destino.  
