*** Settings ***
Resource    ../main.resource

*** Keywords ***
Enter first name
    [Arguments]    ${first_name}
    Wait Until Element Is Visible    name=firstname    10
    Input Text    name=firstname    ${first_name}

Enter last name
    [Arguments]    ${last_name}
    Input Text    name=lastname    ${last_name}

Enter date of birth
    [Arguments]    ${day}    ${month}    ${year}
    Log    Dias: ${day} - ${month} - ${year}
    Select From List By Value    name=birthday_day      ${day}
    Select From List By Value    name=birthday_month    ${month}
    Select From List By Value    name=birthday_year     ${year}

Enter gender
    [Arguments]    ${gender}    ${pronoun}
    Click Element    xpath=//input[@id="sex" and @value="${gender}"]
    IF    ${gender} == -1
        Select From List By Value    id=preferred_pronoun    ${pronoun}
    END

Enter email
    [Arguments]    ${email}
    Input Text    name=reg_email__    ${email}

Enter password
    [Arguments]    ${password}
    Input Text    name=reg_passwd__    ${password}

Click register button
    Click Button    name=websubmit

Check if you were redirected to email validation
    Element Should Be Visible    css=.uiHeaderTitle
    ${page_title}=    Get Text    css=.uiHeaderTitle
    Should Be Equal As Strings    ${page_title}    Enter email code
    
Check email validation instructions
    [Arguments]    ${email}
    Element Should Be Visible    css=.phl.ptm.uiInterstitialContent
    ${instructions}=    Get Text    css=.phl.ptm.uiInterstitialContent
    Should Be Equal As Strings    ${instructions}    Let us know if this email belongs to you. Enter the code from the email sent to ${email}.