*** Settings ***
Resource    ../configweb/configweb_page.resource
Variables   ../config/credentials.py
Resource    ../pagebase/base.resource

Test Setup       Abrir Sistema Maximizado

*** Test Cases ***
Validar cadastro de novo vendedor

    Clicar        ${LOGIN_PAGE_SELLER_BTN}
    Clicar        ${ADD_NEWSELLER_BTN}
    Escrever      ${SELLER_NAME_INPUT}      Joyce Kelly
    Escrever      ${SELLER_EMAIL_INPUT}    joycekelly@email.com
    Escrever      ${SELLER_PASS_INPUT}     senhaJoyce
    Escrever      ${SELLER_PHONE_BTN}     11987654321
    Escrever      ${SELLER_CNPJ_INPUT}    12345678000199
    Escrever      ${SELLER_RAZAO_INPUT}    JK Doces LTDA
    Escrever      ${SELLER_CEP_INPUT}     01001000
    Clicar       ${SELLER_ADDRESS_INPUT}
    Sleep        2s
    Clicar        ${SELLER_CADASTRAR_BTN}
    Sleep        2s
    Validar Texto   ${SELLER_CADASTRO_SUCESSO}   Cadastro realizado com sucesso! Redirecionando...