*** Settings ***
Resource    ../configweb/configweb_page.resource
Variables   ../config/credentials.py
Resource    ../pagebase/base.resource

Test Setup       Abrir Sistema Maximizado

*** Test Cases ***
Validar tela de adicionar produto após login de vendedor com sucesso com Codigo de Produto Repetido

    Clicar        ${LOGIN_PAGE_SELLER_BTN}
    Escrever    ${LOGIN_PAGE_EMAIL_INPUT}    ${EMAIL_VALIDO}    
    Escrever    ${LOGIN_PAGE_PASS_INPUT}     ${SENHA_VALIDA}
    Print
    Clicar        ${LOGIN_PAGE_SUBMIT_BTN}
    
    Sleep       2s

    Clicar      ${LOGIN_PAGE_ADD_PRODUCT_BTN}
    Sleep       2s
    
    Escrever    ${PRODUTO_NOME_INPUT}        Produto de Teste
    Escrever    ${PRODUTO_DESCRICAO_INPUT}   Descrição do Produto de Teste
    Escrever    ${PRODUTO_PRECO_INPUT}       99.90
    Escrever    ${PRODUTO_QTD_INPUT}         10
    Clicar      ${PRODUTO_CATEGORIA_SELECT}

    Selecionar Categoria   Roupas & Acessórios
    Escrever    ${PRODUTO_MARCA_INPUT}       MarcaTeste
    Escrever    ${CODIGO_PRODUTO_INPUT}      CAM-OVR-002
    Sleep       2s

    # No seu caso de teste ou na seção de variáveis:
    ${CAMINHO_IMG}    Set Variable    ${EXECDIR}/imagem/camisa-masculina-manga-curta-preta-linho-malvon.jpg
    Fazer Upload de Imagem    ${PRODUTO_IMAGEM_INPUT}    ${CAMINHO_IMG}
    Sleep       2s
    Clicar      ${PRODUTO_SUBMIT_BTN}
    Validar Texto    ${MSG_CODIGO_REPETIDO}     SKU já existe: CAM-OVR-002. Use um SKU único.
    Sleep       2s
    
    
Validar tela de adicionar produto após login de vendedor com sucesso com Codigo de Produto Novo

    Clicar        ${LOGIN_PAGE_SELLER_BTN}
    Escrever    ${LOGIN_PAGE_EMAIL_INPUT}    ${EMAIL_VALIDO}    
    Escrever    ${LOGIN_PAGE_PASS_INPUT}     ${SENHA_VALIDA}
    Clicar        ${LOGIN_PAGE_SUBMIT_BTN}
    
    Sleep       2s

    Clicar      ${LOGIN_PAGE_ADD_PRODUCT_BTN}
    Sleep       2s
    
    Escrever    ${PRODUTO_NOME_INPUT}        Vestido De Festa
    Escrever    ${PRODUTO_DESCRICAO_INPUT}   Vestido de festa para festa de gala.
    Escrever    ${PRODUTO_PRECO_INPUT}       300.00
    Escrever    ${PRODUTO_QTD_INPUT}         10
    Clicar      ${PRODUTO_CATEGORIA_SELECT}

    Selecionar Categoria   Roupas & Acessórios
    Escrever    ${PRODUTO_MARCA_INPUT}       JK Fashion
    Escrever    ${CODIGO_PRODUTO_INPUT}      VES-FES-001
    Sleep       2s
    
    ${CAMINHO_IMG}    Set Variable    ${EXECDIR}/imagem/oversized_branca.webp
    Fazer Upload de Imagem    ${PRODUTO_IMAGEM_INPUT}    ${CAMINHO_IMG}
    Sleep       2s

    Clicar      ${PRODUTO_SUBMIT_BTN}
    Validar Notificacao de Sucesso     Produto cadastrado com sucesso.
    
    Sleep       3s