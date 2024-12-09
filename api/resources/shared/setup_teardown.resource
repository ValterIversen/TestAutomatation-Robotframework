*** Settings ***
Resource    ../main.resource

*** Keywords ***
Finish test
    Log    a

Get session token
    ${payload}    Load Json From File    ${EXECDIR}/resources/fixture/auth/auth.json

    ${headers}    Create Dictionary
    ...           Content-Type=application/Json
        
    ${response}    POST    url=${geral.URL}/auth
    ...                    headers=${headers}
    ...                    json=${payload}
    
    ${TOKEN}    Set Variable    Bearer ${response.json()}[data][accessToken]

    Set Suite Variable    ${TOKEN}