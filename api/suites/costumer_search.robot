*** Settings ***
Library     ../libraries/generator.py

Resource    ../resources/main.resource
Resource    ../resources/routes/costumer.resource

*** Test Cases ***
TC01 - Search for a costumer by name
    [Documentation]    Test the costumers search with a name
    [Tags]    Search    Costumer    High
    Get session token
    ${response}    Search for a costumer - by name    Marcos Aurélio
    Response should be equal    ${response}    /resources/fixture/costumer_search_expected.json

TC01 - Search for a costumer by phone
    [Documentation]    Test the costumers search with a phone
    [Tags]    Search    Costumer    High
    Get session token
    ${response}    Search for a costumer - by phone    5517982111234
    Response should be equal    ${response}    /resources/fixture/costumer_search_expected.json
