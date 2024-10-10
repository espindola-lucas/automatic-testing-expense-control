*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Library    String
Resource   ../resources/locators.robot

*** Keywords ***
Add Expense Date
    [Arguments]    ${element}
    ${current_date}=    Get Current Date    result_format=%d-%m-%Y
    Input Text    ${element}    ${current_date}

Add Expense Name
    [Arguments]    ${element}        ${value}
    Input Text     ${element}     ${value}

Add Expense Price
    [Arguments]    ${element}        ${value}
    Input Text     ${element}     ${value}

Check Expense Name
    [Arguments]    ${element}
    ${title}=    Get Text    ${element}
    ${title_stripped}=    Strip String    ${title}
    Should Be Equal As Strings    ${title_stripped}    Compra de prueba