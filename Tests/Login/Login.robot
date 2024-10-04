*** Settings ***

Documentation    Teste efetuando o login no portal B2B
Resource    ../../Steps/Main_Steps.robot

*** Test Cases ***

Acessar o saiba mais do Login
    Acessar a página de Login do Portal B2B
    Clicar em Saiba Mais
    Apresenta o Saiba Mais com sucesso

Acessar o Fale com nosso time comercial no Login
    Acessar a página de Login do Portal B2B
    Clicar em Fale com nosso time comercial
    Redireciona para o Portal IZA com sucesso

Efetuando o login no portal B2B com usuário Inválido
    Acessar a página de Login do Portal B2B
    Inserir usuário inválido e senha válida
    Login não é efetuado com sucesso

Efetuando o login no portal B2B com senha Inválido
    Acessar a página de Login do Portal B2B
    Inserir usuário válido e senha inválida
    Login não é efetuado com sucesso

Efetuando o login no portal B2B com usuário Intermitente válido
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Intermitente
    Login efetuado com sucesso

Efetuando o login no portal B2B com usuário Mensal válido
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Login efetuado com sucesso

Efetuando o logoff no portal B2B
    Acessar a página de Login do Portal B2B
    Inserir usuário e senha válidos do plano Mensal
    Logoff efetuado com sucesso