*** Settings ***
Library    Browser

*** Variables ***
# Repositório de Elementos para a página de Login
${LOGIN_PAGE_SELLER_BTN}     id=sellerBtn
${LOGIN_PAGE_EMAIL_INPUT}    id=email
${LOGIN_PAGE_PASS_INPUT}     id=password
${LOGIN_PAGE_SUBMIT_BTN}     id=submitText
${LOGIN_PAGE_WELCOME_MSG}    id=welcomeName
${LOGIN_PAGE_WELCOME_H2}     id=mainContent
${LOGIN_PAGE_ERROR_BOX}      id=messageContent
${SAIR_BTN}                  id=logoutBtn

#Page de Adicionar Produto
${LOGIN_PAGE_ADD_PRODUCT_BTN}    xpath=//a[contains(text(), 'Adicionar Produto')]
${PRODUTO_NOME_INPUT}        id=nome
${PRODUTO_DESCRICAO_INPUT}   id=descricao
${PRODUTO_PRECO_INPUT}       id=preco
${PRODUTO_QTD_INPUT}         id=estoque
${PRODUTO_CATEGORIA_SELECT}  id=categoria
${PRODUTO_IMAGEM_INPUT}      id=productImage
${CODIGO_PRODUTO_INPUT}      id=sku
${MSG_CODIGO_REPETIDO}       id=messageContent
${PRODUTO_MARCA_INPUT}       id=marca
${PRODUTO_SUBMIT_BTN}        id=submitBtn

#Page de Adicionar Vendedor Novo
${ADD_NEWSELLER_BTN}     id=registerLink
${SELLER_NAME_INPUT}     id=nome
${SELLER_EMAIL_INPUT}    id=email
${SELLER_PASS_INPUT}     id=password
${SELLER_PHONE_BTN}     id=telefone
${SELLER_CNPJ_INPUT}    id=cnpj
${SELLER_RAZAO_INPUT}    id=razaoSocial
${SELLER_CEP_INPUT}     id=cep
${SELLER_ADDRESS_INPUT}  id=endereco
${SELLER_CADASTRAR_BTN}   id=submitBtn
${SELLER_CADASTRO_SUCESSO}    id=message


#URL de teste
${TEST_URL}                 http://localhost:8080/login/login.html