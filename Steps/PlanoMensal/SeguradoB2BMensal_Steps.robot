*** Settings ***
Library    ../../Libraries/CPF_Generator.py
Library    ../../Libraries/Email_Generator.py
Library    ../../Libraries/Telefone_Generator.py
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
Informo os dados válidos do novo Segurado
    Wait Until Element Is Visible    ${SegMensal.opção_Segurados}    10
    Click Element                    locator=${SegMensal.opção_Segurados}
    Wait Until Element Is Visible    ${SegMensal.opção_AdicionarSegurados}    10
    Click Element                    locator=${SegMensal.opção_AdicionarSegurados}
    Wait Until Element Is Visible    ${SegMensal.input_Nome}    10
    Input Text                       locator=${SegMensal.input_Nome}    text=Joinha Teste
    ${cpf_gerado}=         Generate Cpf
    Input Text                       locator=${SegMensal.input_CPF}    text=${cpf_gerado}
    Input Text                       locator=${SegMensal.input_Nascimento}    text=29121991
    ${email_gerado}=       Generate Email
    Input Text                       locator=${SegMensal.input_Email}    text=${email_gerado}
    ${telefone_gerado}=    Generate Phone
    Input Text                       locator=${SegMensal.input_Telefone}     text=${telefone_gerado}
    Click Button                     locator=${SegMensal.button_Confirmar}

Informo os dados válidos do Segurado com CPF já existente
    Wait Until Element Is Visible    ${SegMensal.opção_Segurados}    10
    Click Element                    locator=${SegMensal.opção_Segurados}
    Wait Until Element Is Visible    ${SegMensal.opção_AdicionarSegurados}    10
    Click Element                    locator=${SegMensal.opção_AdicionarSegurados}
    Wait Until Element Is Visible    ${SegMensal.input_Nome}    10
    Input Text                       locator=${SegMensal.input_Nome}    text=Joinha Teste
    Input Text                       locator=${SegMensal.input_CPF}    text=925.198.360-75
    Input Text                       locator=${SegMensal.input_Nascimento}    text=29121991
    ${email_gerado}=    Generate Email
    Input Text                       locator=${SegMensal.input_Email}    text=${email_gerado}
    ${telefone_gerado}=    Generate Phone
    Input Text                       locator=${SegMensal.input_Telefone}     text=${telefone_gerado}
    Click Button                     locator=${SegMensal.button_Confirmar}

Informo os dados válidos do Segurado com EMAIL já existente
    Wait Until Element Is Visible    ${SegMensal.opção_Segurados}    10
    Click Element                    locator=${SegMensal.opção_Segurados}
    Wait Until Element Is Visible    ${SegMensal.opção_AdicionarSegurados}    10
    Click Element                    locator=${SegMensal.opção_AdicionarSegurados}
    Wait Until Element Is Visible    ${SegMensal.input_Nome}     10
    Input Text                       locator=${SegMensal.input_Nome}    text=Joinha Teste
    ${cpf_gerado}=    Generate Cpf
    Input Text                       locator=${SegMensal.input_CPF}    text=${cpf_gerado}
    Input Text                       locator=${SegMensal.input_Nascimento}    text=29121991
    Input Text                       locator=${SegMensal.input_Email}    text=o5p5gxrk0@example.com
    ${telefone_gerado}=    Generate Phone
    Input Text                       locator=${SegMensal.input_Telefone}     text=${telefone_gerado}
    Click Button                     locator=${SegMensal.button_Confirmar}

Informo os dados válidos do Segurado com TELEFONE já existente
    Wait Until Element Is Visible    ${SegMensal.opção_Segurados}    10
    Click Element                    locator=${SegMensal.opção_Segurados}
    Wait Until Element Is Visible    ${SegMensal.opção_AdicionarSegurados}    10
    Click Element                    locator=${SegMensal.opção_AdicionarSegurados}
    Wait Until Element Is Visible    ${SegMensal.input_Nome}    10
    Input Text                       locator=${SegMensal.input_Nome}    text=Joinha Teste
    ${cpf_gerado}=    Generate Cpf
    Input Text                       locator=${SegMensal.input_CPF}    text=${cpf_gerado}
    Input Text                       locator=${SegMensal.input_Nascimento}    text=29121991
    ${email_gerado}=    Generate Email
    Input Text                       locator=${SegMensal.input_Email}    text=${email_gerado}
    Input Text                       locator=${SegMensal.input_Telefone}     text=(61) 92889-8074
    Click Button                     locator=${SegMensal.button_Confirmar}

Informo os dados válidos do Segurado cadastrado
    Wait Until Element Is Visible    ${SegMensal.opção_Segurados}    10
    Click Element                    locator=${SegMensal.opção_Segurados}
    Wait Until Element Is Visible    ${SegMensal.opção_ListarSegurado}    10
    Click Element                    locator=${SegMensal.opção_ListarSegurado}
    Wait Until Element Is Visible    ${SegMensal.opção_BuscarSegurado}    10
    Input Text                       ${SegMensal.opção_BuscarSegurado}       text=171.268.516-34
    Wait Until Element Is Visible    ${SegMensal.button_Opcoes}   10
    Click Button                     locator=${SegMensal.button_Opcoes}
    Wait Until Element Is Visible    ${SegMensal.button_Detalhes}   10
    Click Button                     locator=${SegMensal.button_Detalhes}

Segurado adicionado com sucesso
    Wait Until Page Contains    text=Adição do segurado concluída com êxito.
    Close Browser

Segurado não é adicionado com sucesso
    Wait Until Page Contains    text=Ops, parece que houve um erro.Verifique se os campos estão corretos
    Close Browser

Segurado apresentado com sucesso
    Wait Until Page Contains    text=Detalhes do segurado
    Close Browser
