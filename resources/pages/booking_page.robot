*** Settings ***
Resource    ../main.robot

*** Variables ***
&{booking}
...     go_to_second_step=//a[contains(text(),"Tem interesse? Entre em contato e agende!")]
...     input_nome=//input[@id="name"]
...     input_celular=//input[@placeholder="Digite seu celular"]
...     go_to_third_step=//a[contains(text(),"Prazer em te conhecer! Qual data?")]
...     data_picker=//input[@class="register_datepicker__giqWh"]
...     next_month_button=//button[@class="react-datepicker__navigation--next"]
...     day_1=//div[@class="react-datepicker__day--028"]
...     day_2=//div[@class="react-datepicker__day--029"]
...     book_date=//a[contains(text(),"Reservar datas!")]


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

Não deve processeguir e deve continuar no segundo passo
    Element Should Be Visible   ${booking.go_to_third_step}


Seleciona um período de reserva
    Click Element   ${booking.data_picker}
    Sleep           2
    Click Element   ${booking.day_1}
    Click Element   ${booking.day_2}

Realizar a reserva
    Click Element   ${booking.book_date}
    Press Key       "ESC"