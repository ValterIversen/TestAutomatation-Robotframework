*** Settings ***
Resource    ../main.resource

*** Variables ***
${CPF_FIELD}        xpath=//android.widget.EditText[1]
${PASSWORD_FIELD}   xpath=//android.widget.EditText[2]
${LOGIN_BUTTON}     xpath=//android.widget.Button[@text="Login"]

*** Keywords ***
Enter login
    [Arguments]    ${cpf}
    Input Text    ${CPF_FIELD}    ${cpf}

Enter password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Tap login button
    Click Element    ${LOGIN_BUTTON}

Validate successful login message
    Page should contain text    Registration successful    15