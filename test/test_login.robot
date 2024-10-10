*** Settings ***
Library     SeleniumLibrary
Library    XML
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Login Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Element Should Be Visible    ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}
    Input Text    ${INPUT_EMAIL}    ${EMAIL}
    Input Password    ${INPUT_PASS}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Sleep    2s
    Page Should Contain    Expense Control