*** Settings ***
Library     SeleniumLibrary
Library    Dialogs
Library    String
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Add Product
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Element Should Be Visible    ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}
    Input Text    ${INPUT_EMAIL}    ${EMAIL}
    Input Password    ${INPUT_PASS}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Click Element    ${BUTTON_DELETE_EXPENSE}
    Page Should Not Contain    Compra de prueba
    Sleep    5s