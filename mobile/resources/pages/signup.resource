*** Settings ***
Resource    ../main.resource

*** Variables ***
${REGISTER_CPF}            xpath=//android.widget.EditText[1]
${REGISTER_NAME}           xpath=//android.widget.EditText[2]
${REGISTER_EMAIL}          xpath=//android.widget.EditText[3]
${REGISTER_PASSWORD}       xpath=//android.widget.EditText[4]
${REGISTER_CONFIRM_PASS}   xpath=//android.widget.EditText[5]
${REGISTER_BUTTON}         xpath=//android.widget.Button[@text="Register"]
${REGISTER_NAV_BUTTON}     xpath=//android.widget.Button[@text="Sign Up"]

*** Keywords ***

Go To Registration Page
    Click Element    ${REGISTER_NAV_BUTTON}
    Wait Until Page Contains Element    ${REGISTER_CPF}    30

Enter user CPF
    [Arguments]    ${cpf}
    Input Text    ${REGISTER_CPF}    ${cpf}

Enter user name
    [Arguments]    ${name}
    Input Text    ${REGISTER_NAME}    ${name}

Enter user email
    [Arguments]    ${email}
    Input Text    ${REGISTER_EMAIL}    ${email}

Enter user password
    [Arguments]    ${password}
    Input Text    ${REGISTER_PASSWORD}    ${password}

Confirm password
    [Arguments]    ${password}
    Input Text    ${REGISTER_CONFIRM_PASS}    ${password}

Tap register button
    Click Element    ${REGISTER_BUTTON}

Validate successful register message
    Page should contain text    Registration successful    15