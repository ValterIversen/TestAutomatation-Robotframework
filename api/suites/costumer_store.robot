*** Settings ***
Library     ../libraries/generator.py

Resource    ../resources/main.resource
Resource    ../resources/routes/costumer.resource

Test Teardown   Finish test

*** Test Cases ***
TC01 - Register a new costumer
    [Documentation]    Test the costumers registration
    [Tags]    Register    Costumer    High
    Get session token
    ${costumer}=    Generate new costumer
    ${reponse}    Register a new costumer    ${costumer}
    Response should be equal    ${response}    /resources/fixture/costumer_registration_expected.json

TC01 - Try to register a costumer that already exists
    [Documentation]    Test client duplication validation
    [Tags]    Register    Costumer    High
    Get session token
    ${reponse}    Register an existing customer    /resources/fixture/costumer_already_exists_payload.json
    Response should be equal    ${response}    /resources/fixture/costumer_already_exists_expected.json