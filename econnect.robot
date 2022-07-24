*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Login
    open browser    https://demoprojects.e-connectsolutions.com/eprash-test     chrome
    input text      id:LoginIdForShow      econnect
    input text      id:PasswordForShow    admin
    click link      xpath://*[@id="btnLogin"]
    element should be visible       id:on_scroll
    element should be enable        id:on_scroll
    click link      xpath://*[@id="on_scroll"]/span
    log to console  Passed successfully
    close browser