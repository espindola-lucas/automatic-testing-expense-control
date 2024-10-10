*** Variables ***
${BROWSER}    chrome
${BASE_URL}   http://localhost:8080/
${EMAIL}      lucas@gmail.com
${PASSWORD}   lucas1234
${BUTTON_DELETE_EXPENSE}    xpath=//h3[normalize-space(text())='Compra de prueba']/ancestor::div[contains(@class, 'flex') or contains(@class, 'bg-card-custom')]//button[@id='expense-delete']