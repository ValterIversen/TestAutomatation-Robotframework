*** Settings ***
Resource    ../main.resource

*** Keywords ***
Access the website
    Open Browser    ${config.URL}    ${config.Browser}
    Set Selenium Implicit Wait    10 seconds
    Maximize Browser Window

Close the browser
    Take Screenshot
    Close Browser
