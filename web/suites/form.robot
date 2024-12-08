*** Settings ***
Resource    ../resources/main.resource
Resource    ../resources/pages/login.resource
Resource    ../resources/pages/signup.resource

Test Setup      Access the website
Test Teardown   Close the browser

*** Test Cases ***
TC01 - Form filling test
    [Documentation]    Test to validate form filling using random data
    [Tags]    Search    Video    High
    Go to Sign Up
    ${user}=            Generate Fake User
    Enter first name        ${user['first_name']}
    Enter last name         ${user['last_name']} 
    Enter date of birth     ${user['birth_day']}    ${user['birth_month']}    ${user['birth_year']}
    Enter gender            ${user['gender']}    ${user['pronoun']}
    Enter email             ${user['email']}
    Enter password          ${user['password']}
    #Click register button
    #Check if you were redirected to email validation
    #Check email validation instructions    ${user['email']}