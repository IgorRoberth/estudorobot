*** Settings ***
# Importa o arquivo que você criou acima
Variables   ../config/credentials.py
Resource    ../configweb/configweb_page.resource
Resource    ../pagebase/base.resource

# Pode usar Setup e Teardown para organizar a abertura/fechamento
Test Setup       Abrir Sistema Maximizado

*** Test Cases ***
Validar login de vendedor com sucesso

    Clicar        ${LOGIN_PAGE_SELLER_BTN}
    Escrever    ${LOGIN_PAGE_EMAIL_INPUT}    ${EMAIL_VALIDO}    
    Escrever    ${LOGIN_PAGE_PASS_INPUT}     ${SENHA_VALIDA}
    Print
    Clicar        ${LOGIN_PAGE_SUBMIT_BTN}
    
    # Validação dinâmica de sucesso
    Validar Texto    ${LOGIN_PAGE_WELCOME_H2}    Bem-vindo(a), Igor Roberth!
    Sleep       2s

Validar logout de vendedor

    Clicar        ${LOGIN_PAGE_SELLER_BTN}
    Escrever    ${LOGIN_PAGE_EMAIL_INPUT}     ${EMAIL_VALIDO}
    Escrever    ${LOGIN_PAGE_PASS_INPUT}      ${SENHA_VALIDA}
    Clicar        ${LOGIN_PAGE_SUBMIT_BTN}
    Sleep       2s  
    Clicar        ${SAIR_BTN}
    Sleep       2s    

Validar login de vendedor com email inválido
    
    Clicar        ${LOGIN_PAGE_SELLER_BTN}
    # Aqui forçamos o erro digitando o e-mail errado
    Escrever    ${LOGIN_PAGE_EMAIL_INPUT}    ${EMAIL_INVALIDO}
    Escrever    ${LOGIN_PAGE_PASS_INPUT}     ${SENHA_VALIDA}
    Clicar        ${LOGIN_PAGE_SUBMIT_BTN}

    # Validação dinâmica da mensagem de erro
    Validar Texto   elemento=${LOGIN_PAGE_ERROR_BOX}    texto_esperado=E-mail inválido.

    Sleep       2s

Validar login de vendedor com senha inválida
    
    Clicar        ${LOGIN_PAGE_SELLER_BTN}
    Escrever    ${LOGIN_PAGE_EMAIL_INPUT}    ${EMAIL_VALIDO}
    Escrever    ${LOGIN_PAGE_PASS_INPUT}     ${SENHA_INVALIDA}
    Clicar        ${LOGIN_PAGE_SUBMIT_BTN}

    # Validação dinâmica da mensagem de erro
    Validar Texto   elemento=${LOGIN_PAGE_ERROR_BOX}    texto_esperado=Senha atual inválida.

    Sleep       2s