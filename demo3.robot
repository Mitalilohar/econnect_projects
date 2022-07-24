*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demoprojects.e-connectsolutions.com/eprash-test

*** Test Cases ***
Inboxtest
    open browser    ${url}     ${browser}
    maximize browser window
    title should be  E-Prashasan
    ${login_test}   set variable  id:LoginIdForShow
    element should be visible   ${login_test}
    element should be enabled   ${login_test}
    input text   ${login_test}     econnect
    input text  id:PasswordForShow    admin
    sleep   5s
    clear element text  ${login_test}
    sleep   3s

    close browser



