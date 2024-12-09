*** Settings ***
Resource    ../main.resource


*** Keywords ***
Register a new costumer
    [Arguments]    ${payload}

    ${headers}    Create Dictionary
    ...           Content-Type=application/Json
    ...           Autorization=${TOKEN    ''}
        
    ${response}    POST    url=${geral.URL}/costumer
    ...                    headers=${headers}
    ...                    json=${payload}
    ...                    expected_status=200
    
    [Return]       ${response}

Register an existing customer
    [Arguments]    ${payload_path}

    ${payload}    Load Json From File    ${EXECDIR}${payload_path}

    ${headers}    Create Dictionary
    ...           Content-Type=application/Json
    ...           Autorization=${TOKEN}
        
    ${response}    POST    url=${geral.URL}/costumer
    ...                    headers=${headers}
    ...                    json=${payload}
    ...                    expected_status=409
    
    [Return]       ${response}

Search for a costumer - by name
    [Arguments]    ${name}

    ${headers}    Create Dictionary
    ...           Autorization=${TOKEN}
        
    ${response}    GET    url=${geral.URL}/costumer?name=${name}
    ...                    headers=${headers}
    
    [Return]       ${response}

Search for a costumer - by phone
    [Arguments]    ${phone}

    ${headers}    Create Dictionary
    ...           Autorization=${TOKEN}
        
    ${response}    GET    url=${geral.URL}/costumer?phone=${phone}
    ...                    headers=${headers}
    
    [Return]       ${response}

Response should be equal
    [Arguments]    ${response}    ${expected_response_path}
    ${expected_response}=    Load Json From File    ${EXECDIR}${expected_response_path}    encoding=UTF-8
    Should Be Equal As Strings    ${response}    ${expected_response}
