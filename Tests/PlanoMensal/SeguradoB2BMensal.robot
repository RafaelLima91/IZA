*** Settings ***

Documentation    Teste Segurado Plano Mensal portal B2B
Resource    ../../Steps/Main_Steps.robot

*** Test Cases ***

Adicionar novo segurado no usuário Mensal
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Informo os dados válidos do novo Segurado
    Segurado adicionado com sucesso

Adicionar segurado no usuário Mensal com CPF já cadastrado
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Informo os dados válidos do Segurado com CPF já existente
    Segurado não é adicionado com sucesso

Adicionar segurado no usuário Mensal com EMAIL já cadastrado
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Informo os dados válidos do Segurado com EMAIL já existente
    Segurado não é adicionado com sucesso

Adicionar segurado no usuário Mensal com TELEFONE já cadastrado
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Informo os dados válidos do Segurado com TELEFONE já existente
    Segurado não é adicionado com sucesso

Consultar segurado no usuário Mensal com sucesso
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Informo os dados válidos do Segurado cadastrado
    Segurado apresentado com sucesso