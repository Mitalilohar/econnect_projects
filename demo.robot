*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Login
    open browser    https://demoprojects.e-connectsolutions.com/eprash-test     chrome
    input text  id:LoginIdForShow      econnect
    input text  id:PasswordForShow    admin
    click link  xpath://*[@id="btnLogin"]
    close browser