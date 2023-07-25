*** Settings ***
Resource    ../../resources/main.robot

Test Setup      Acessar o site
Test Teardown   Fechar o navegador

*** Test Cases ***
TC01 - Reservar uma data
    Ir para o segundo passo
    Informar os dados de contato
    Ir para o terceiro passo
    #Selecionar uma data
    #Realizar a reserva