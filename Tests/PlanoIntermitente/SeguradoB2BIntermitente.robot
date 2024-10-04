*** Settings ***

Documentation    Teste Segurado Plano Intermitente portal B2B
Resource    ../../Steps/Main_Steps.robot

*** Test Cases ***

Consultar segurado por CPF no usuário Intermitente
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos para consulta do plano Intermitente
    Informo os dados válidos do CPF
    Consulta realizada com sucesso

Consultar segurado por Bilhete no usuário Intermitente
     Acessar a página de Login do Portal B2B
     Inserir usuário e senha válidos para consulta do plano Intermitente
     Informo os dados válidos do Bilhete
     Consulta realizada com sucesso
