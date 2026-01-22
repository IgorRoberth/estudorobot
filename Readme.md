🛒 Automação de Testes: Loja CONTEMPORARY

📑 Sobre o Projeto Este repositório contém a automação de testes da CONTEMPORARY, uma plataforma de e-commerce completa desenvolvida por mim para aplicar conceitos avançados de QA e desenvolvimento. O sistema foi construído com uma arquitetura robusta, e a automação utiliza dados simbólicos para validar fluxos críticos de cadastro e regras de negócio.

💻 Stack de Desenvolvimento do Sistema Para demonstrar a complexidade do ambiente testado, o sistema CONTEMPORARY foi desenvolvido utilizando:

Back-end: Java com Spring Boot.

Banco de Dados: MySQL (gerenciado via MySQL Workbench).

Front-end: HTML5, CSS3 e JavaScript puro (Vanilla JS).

🎯 Objetivo Técnico da Automação Como profissional de QA com 4 anos de experiência consolidada em Java e Selenium, este projeto marca minha expansão para a stack de Python/Robot Framework. O foco principal é realizar um benchmarking técnico, explorando:

Wait Strategies: Comparação das esperas implícitas do Selenium vs. a auto-espera da Browser Library (Playwright).

Keywords DSL: Criação de uma linguagem de domínio em português para facilitar a leitura técnica.

Arquitetura Sênior: Uso de Page Object Model (POM) com separação rigorosa entre arquivos de configuração (configweb), elementos (pagebase) e testes.

🛠️ Pré-requisitos Certifique-se de ter o ambiente configurado com as versões que validamos:

Node.js: v18 ou superior. (Verifique com node --version)

npm: v10.8.1 ou superior (Verifique com npm -v).

Python: v3.10 ou superior (Verifique com python --version).

⚙️ Configuração e Instalação Instale as dependências da automação:

Bash pip install robotframework robotframework-browser Inicialize os binários dos navegadores (Playwright):

Bash rfbrowser init 🚀 Execução dos Testes Para rodar as suítes de Login e Cadastro juntas e gerar um relatório consolidado:

Bash robot -d ./results testescadastro testeslogin 📂 Estrutura do Repositório de QA configweb/: Configurações de inicialização do navegador e setup do sistema.

pagebase/: Keywords genéricas (DSL) e repositório de elementos (IDs/XPaths).

imagens/: Massa de dados multimídia para testes de upload.

testescadastro/ & testeslogin/: Suítes de testes automatizados organizadas por funcionalidade.

🔧 Dica de Troubleshooting Caso o VS Code sinalize erros de sintaxe (linhas vermelhas) em caminhos que você sabe que estão corretos, limpe o cache da extensão:

Ctrl + Shift + P

Selecione: Robot Framework: Clear caches and restart language server