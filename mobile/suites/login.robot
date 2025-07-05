*** Settings ***
Resource    ../resources/main.resource
Resource    ../resources/pages/login.resource
Resource    ../resources/pages/signup.resource

*** Test Cases ***
Login With Valid Credentials
    [Documentation]    Testing login with valid credencials
    [Tags]    Login    High
    Start application
    Enter login         12345678900
    Enter password    Password@123
    Tap login button
    Validate successful login message
    

Register New User
    [Documentation]    Testing sign up screen
    [Tags]    SignUp    High
    Start application
    Go to registration page
    ${user}=               Generate Fake User
    Enter user CPF              ${user['cpf']}
    Enter user name             ${user['name']}
    Enter user email            ${user['email']}
    Enter user password         ${user['password']}
    Confirm password            ${user['password']}
    Tap register button
    Validate successful register message