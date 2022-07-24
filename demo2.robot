*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demoprojects.e-connectsolutions.com/eprash-test

*** Test Cases ***
Login
    open browser    ${url}     ${browser}
    Logintoapp
    close browser

*** Keywords ***
Logintoapp
    input text  id:LoginIdForShow      econnect
    input text  id:PasswordForShow    admin
    click link  xpath://*[@id="btnLogin"]


