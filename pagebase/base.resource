*** Settings ***
Library    Browser
Library    Dialogs
Resource   ../elementspage/elements.resource

*** Keywords ***
# --- Keywords em Português ---
Clicar
    [Arguments]       ${elemento}
    Click             ${elemento}

Escrever
    [Arguments]    ${elemento}    ${texto}
    Fill Text      ${elemento}    ${texto}

Escrever Senha
    [Arguments]    ${elemento}    ${texto}
    # O Type Secret mascara o valor no relatório final
    Type Secret    ${elemento}    ${texto}    

Validar Texto
    [Arguments]    ${elemento}    ${texto_esperado}
    # Força o Robot a verificar se o elemento existe em no máximo 1 segundo
    Wait For Elements State    ${elemento}    visible    timeout=1s
    # Se ele existir, pegamos o texto rapidamente
    Get Text    ${elemento}    contains    ${texto_esperado}

Selecionar Categoria
    [Arguments]    ${nome_da_categoria}
    # O comando abaixo procura o ID 'categoria' e seleciona pelo texto visível
    Select Options By    ${PRODUTO_CATEGORIA_SELECT}    text    ${nome_da_categoria}

Fazer Upload de Imagem
    [Arguments]    ${seletor_input}    ${caminho_arquivo}
    # Esta keyword injeta o arquivo diretamente no campo de upload
    Upload File By Selector    ${seletor_input}    ${caminho_arquivo}    

Pausar para Inspeção
    [Documentation]    Interrompe o teste e abre uma janela pop-up. O navegador só fecha após clicar em OK.
    Pause Execution    Mensagem: O teste está pausado. Verifique o sistema e clique em OK para continuar.

Validar Notificacao de Sucesso
    [Arguments]    ${mensagem_esperada}
    Wait For Elements State    id=messageContainer    visible    timeout=10s
    Get Text    id=messageContent    contains    ${mensagem_esperada}

Print
    # O comando abaixo captura a página inteira (scroll completo)
    Take Screenshot    fullPage=True