*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demoprojects.e-connectsolutions.com/eprash-dev

*** Test Cases ***
Testcase1
    open browser    ${url}     ${browser}

    #set selenium speed  0.5s
    Deleteledge



*** Keywords ***


Deleteledge
    wait until page contains    Password
    input text  id:LoginIdForShow      econnect
    input text  id:PasswordForShow    admin
    click element  xpath://*[@id="btnLogin"]
    #sleep   3s
    go to   https://demoprojects.e-connectsolutions.com/eprash-dev/ACC/Ledger
    click element   id:SearchText
    input text      id:SearchText   Subin SK
    click element   xpath://*[@id="BtnSearchfilter"]/i
    sleep   2s
    click link      xpath://*[@id="classListing"]//table//tbody//tr//*[@class="btn btn-sm btn-danger deleteLink"][1]
    sleep   1s
    click element      //button[@class='btn btn-primary' and text()='OK']
