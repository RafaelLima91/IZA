*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
Informo os dados válidos do CPF
    Wait Until Element Is Visible    ${SegIntermintente.opção_SeguradosInter}    10
    Click Element                    locator=${SegIntermintente.opção_SeguradosInter}
    Input Text                       locator=${SegIntermintente.input_DadosSegurado}    text=016.872.581-98
    Click Button                     locator=${SegIntermintente.button_ConsultarSegurado}

Informo os dados válidos do Bilhete
    Wait Until Element Is Visible     ${SegIntermintente.opção_SeguradosInter}    10
    Click Element                     locator=${SegIntermintente.opção_SeguradosInter}
    Wait Until Element Is Visible     ${SegIntermintente.opção_SelecionarConsulta}    10
    Click Element                     locator=${SegIntermintente.opção_SelecionarConsulta}
    Wait Until Element Is Visible     ${SegIntermintente.opção_ConsultaBilhete}
    Click Element                     ${SegIntermintente.opção_ConsultaBilhete}
    Input Text                        locator=${SegIntermintente.input_DadosSegurado}    text=81001839688
    Click Button                      locator=${SegIntermintente.button_ConsultarSegurado}

Consulta realizada com sucesso
    Wait Until Page Contains          text=WYLLAMS XAVIER GOMES DA SILVA
    Wait Until Element Is Visible     ${SegIntermintente.button_DetalhesSeguradoInter}    10
    Click Button                      locator=${SegIntermintente.button_DetalhesSeguradoInter}
    Wait Until Element Is Visible     ${SegIntermintente.button_VerDetalhesSeguradoInter}    10
    Click Button                      locator=${SegIntermintente.button_VerDetalhesSeguradoInter}
    Wait Until Element Is Visible     ${SegIntermintente.button_InfDetalhesSeguradoInter}    10
    Click Button                      locator=${SegIntermintente.button_InfDetalhesSeguradoInter}
    Wait Until Page Contains          text=Detalhes do segurado
    Wait Until Page Contains          text=81001839688
    Wait Until Page Contains          text=016.872.581-98
    Close Browser