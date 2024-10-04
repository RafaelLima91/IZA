*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
Acessar Faturamento com sucesso
    Wait Until Element Is Visible     ${FatMensal.button_AmbienteProd}    10
    Click Button                      locator=${FatMensal.button_AmbienteProd}
    Sleep    2
    Wait Until Element Is Visible     ${FatMensal.opção_Faturamento}    10
    Click Button                      locator=${FatMensal.opção_Faturamento}
    Wait Until Page Contains          text=Faturamento

Relatório de faturamento gerado com sucesso
    Wait Until Element Is Visible        ${FatMensal.opção_RelatorioFat}    10
    Click Element                        locator=${FatMensal.opção_RelatorioFat}
    Wait Until Page Contains             text=Relatório baixado com sucesso
    Close Browser

