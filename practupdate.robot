*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demoprojects.e-connectsolutions.com/eprash-dev

*** Test Cases ***
Testcase1
    open browser    ${url}     ${browser}

    set selenium speed  0.5s
    Updateledge



*** Keywords ***
Updateledge
    wait until page contains    Password
    input text  id:LoginIdForShow      econnect
    input text  id:PasswordForShow    admin
    click element  xpath://*[@id="btnLogin"]
    #sleep   3s
    go to   https://demoprojects.e-connectsolutions.com/eprash-dev/ACC/Ledger
    click element   id:SearchText
    input text      id:SearchText   Mitali
    click element   xpath://*[@id="BtnSearchfilter"]/i
    click link      xpath://div[@class='btn-group btn-group-xs']//a[@class='btn btn-sm btn-success OpenAddEdit' and @title='Click here to Edit']
    click element   xpath://*[@id="Name"]
    input text  xpath://*[@id="Name"]   Mitali Lohar
    #input text  xpath://*[@id="Number"]     941326
    #click element   xpath://*[@id="btnSave"]