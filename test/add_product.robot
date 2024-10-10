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
    Click Element    ${BUTTON_ADD_EXPENSE}
    Add Expense Date    ${INPUT_EXPENSE_DATE}
    Add Expense Name    ${INPUT_EXPENSE_NAME}    Compra de prueba
    Add Expense Price    ${INPUT_EXPENSE_PRICE}    10520
    Click Element    ${BUTTON_ADD_EXPENSE}
    Check Expense Name    ${EXPENSE_TITLE}
    Sleep    5s