*** Settings ***
Resource    ../main.robot

*** Keywords ***
Acessar o site
    Open Browser    ${geral.URL}    ${geral.Browser}
    Maximize Browser Window

Fechar o navegador
    Close Browser
