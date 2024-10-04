*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Dados de acesso
${browser}                           edge
${url}                               https://portal.hml.iza.com.vc/
${url_FaleComercial}                 https://iza.com.vc/para-empresa

#Dados das massas de testes
${EmailValidoIntermitente}           rafael.lima@iza.com.vc
${SenhaValidaIntermitente}           ParceiroIZA@1
${EmailValidoMensal}                 bonita35@gmail.com
${SenhaValidaMensal}                 ParceiroIZA@1
${EmailInvalido}                     onita35@gmail.com
${SenhaInvalido}                     1234


