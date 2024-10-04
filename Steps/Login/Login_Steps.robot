*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
Acessar a página de Login do Portal B2B
    Open Browser    url=${url}    browser=${browser}

Clicar em saiba mais
    Wait Until Element Is Visible    ${Login.link_SaibaMais}    10
    Click Link                       locator=${Login.link_SaibaMais}

Clicar em Fale com nosso time comercial
    Wait Until Element Is Visible    ${Login.link_FaleComercial}    10
    Click Element                    locator=${Login.link_FaleComercial}

Inserir usuário e senha válidos do plano Intermitente
    Wait Until Element Is Visible    ${Login.input_Usuario}    10
    Input Text                       locator=${Login.input_Usuario}    text=${EmailValidoIntermitente}
    Wait Until Element Is Visible    ${Login.input_Senha}    10
    Input Text                       locator=${Login.input_Senha}  text=${SenhaValidaIntermitente}
    Wait Until Element Is Visible    ${Login.button_Acessar}    10
    Click Button                     locator=${Login.button_Acessar}

Inserir usuário e senha válidos do plano Mensal
    Wait Until Element Is Visible    ${Login.input_Usuario}    10
    Input Text                       locator=${Login.input_Usuario}    text=${EmailValidoMensal}
    Wait Until Element Is Visible    ${Login.input_Senha}    10
    Input Text                       locator=${Login.input_Senha}   text=${SenhaValidaMensal}
    Wait Until Element Is Visible    ${Login.button_Acessar}    10
    Click Button                     locator=${Login.button_Acessar}

Inserir usuário inválido e senha válida
    Wait Until Element Is Visible    ${Login.input_Usuario}    10
    Input Text                       locator=${Login.input_Usuario}    text=${EmailInvalido}
    Wait Until Element Is Visible    ${Login.input_Senha}    10
    Input Text                       locator=${Login.input_Senha}   text=${SenhaValidaMensal}
    Wait Until Element Is Visible    ${Login.button_Acessar}   10
    Click Button                     locator=${Login.button_Acessar}

Inserir usuário válido e senha inválida
    Wait Until Element Is Visible    ${Login.input_Usuario}    10
    Input Text                       locator=${Login.input_Usuario}   text=${EmailValidoMensal}
    Wait Until Element Is Visible    ${Login.input_Senha}   10
    Input Text                       locator=${Login.input_Senha}  text=1${SenhaInvalido}
    Wait Until Element Is Visible    ${Login.button_Acessar}    10
    Click Button                     locator=${Login.button_Acessar}

Inserir usuário e senha válidos para consulta do plano Intermitente
    Wait Until Element Is Visible    ${Login.button_LoginAmbienteProd}    10
    Click Button                     locator=${Login.button_LoginAmbienteProd}
    Wait Until Element Is Visible    ${Login.input_Usuario}    10
    Input Text                       locator=${Login.input_Usuario}   text=luan@beedelivery.com.br
    Wait Until Element Is Visible    ${Login.input_Senha}   10
    Input Text                       locator=${Login.input_Senha}  text=Teste@123
    Wait Until Element Is Visible    ${Login.button_Acessar}    10
    Click Button                     locator=${Login.button_Acessar}

Login efetuado com sucesso
    Wait Until Page Contains    text=Home
    Close Browser

Login não é efetuado com sucesso
    Wait Until Page Contains    text=E-mail ou senha inválidos.
    Close Browser

Apresenta o Saiba Mais com sucesso
    Wait Until Page Contains    text=Como acessar o Portal do Cliente IZA Empresas
    Close Browser

Redireciona para o Portal IZA com sucesso
    ${windows}=    Get Window Handles
    Log      Lista de janelas: ${windows}  # Logando todas as janelas para garantir que há janelas abertas
    Length Should Be           ${windows}    2
    Log    Nova janela aberta: ${windows[1]}    #Logando apenas na nova janela aberta
    Switch Window              ${windows[1]}
    Wait Until Page Contains   text=Seguro Acidente Pessoal
    Location Should Be         ${url_FaleComercial}
    Close Browser

Logoff efetuado com sucesso
    Wait Until Element Is Visible    ${Login.button_Logoff}    10
    Click Button                     ${Login.button_Logoff}
    Wait Until Page Contains    text=Bem-vindos ao Portal do Cliente IZA!
    Close Browser

