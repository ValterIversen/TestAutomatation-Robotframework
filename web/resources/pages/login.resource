*** Settings ***
Resource    ../main.resource

*** Keywords ***
Go to Sign Up
    Wait Until Element Is Visible    css=a.selected[data-testid='open-registration-form-button']    10
    Click Element    css=a.selected[data-testid='open-registration-form-button']