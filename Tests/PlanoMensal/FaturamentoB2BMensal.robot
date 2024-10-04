*** Settings ***

Documentation    Teste Faturamento Plano Mensal portal B2B
Resource    ../../Steps/Main_Steps.robot

*** Test Cases ***

Validar Relatório no Faturamento no usuário Mensal
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Acessar Faturamento com sucesso
    Relatório de faturamento gerado com sucesso