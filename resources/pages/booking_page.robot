*** Settings ***
Resource    ../main.robot

*** Variables ***
&{booking}
...     go_to_second_step=//a[contains(text(),"Tem interesse? Entre em contato e agende!")]
...     input_nome=//input[@id="name"]
...     input_celular=//input[@placeholder="Digite seu celular"]
...     go_to_third_step=//a[contains(text(),"Prazer em te conhecer! Qual data?")]
...     data_picker=//input[@class="register_datepicker__giqWh"]


*** Keywords ***
Ir para o segundo passo
    Wait Until Element Is Visible   ${booking.go_to_second_step}  10
    Click Element                   ${booking.go_to_second_step}

Informar os dados de contato
    [Arguments]    ${dados_contato}
    Wait Until Element Is Visible   ${booking.input_nome}       10
    Input Text                      ${booking.input_nome}       ${dados_contato.nome}
    Wait Until Element Is Visible   ${booking.input_celular}    10
    Input Text                      ${booking.input_celular}    ${dados_contato.celular}

Ir para o terceiro passo
    Wait Until Element Is Visible   ${booking.go_to_third_step}  10
    Click Element                   ${booking.go_to_third_step}


Selecionar uma data


Realizar a reserva
