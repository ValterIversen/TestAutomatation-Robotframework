*** Settings ***
Resource    ../../resources/main.robot

Test Setup      Acessar o site
Test Teardown   Fechar o navegador

*** Test Cases ***
TC01 - Reservar uma data
    Ir para o segundo passo
    Informar os dados de contato    ${dados_validos}
    Ir para o terceiro passo
    Seleciona um período de reserva
    Realizar a reserva

TC02 - Reservar uma data com dados inválidos
    Ir para o segundo passo
    Informar os dados de contato    ${dados_invalidos}
    Ir para o terceiro passo
    Não deve processeguir e deve continuar no segundo passo