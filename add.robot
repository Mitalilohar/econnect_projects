*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demoprojects.e-connectsolutions.com/eprash-dev

*** Test Cases ***
Testcase1
    open browser    ${url}     ${browser}

    set selenium speed  0.5s
    Logintoapp
    Addledger


*** Keywords ***
Logintoapp
    wait until page contains    Password
    input text  id:LoginIdForShow      econnect
    input text  id:PasswordForShow    admin
    click element  xpath://*[@id="btnLogin"]
    #sleep   3s
    go to   https://demoprojects.e-connectsolutions.com/eprash-dev/ACC/Ledger
    #sleep   5s
    #click element  xpath://*[@id="on_scroll"]/span
    #click element  xpath://*[@id="menu_kis"]/div[1]/ul/li[3]/a/span
    #click element  xpath://*[@id="0"]/li[7]/a/span
    #click element  xpath://*[@id="menu-95"]/li[1]/a/span
    #sleep   5

Addledger
    click element   xpath://a[@id='modals-bootbox-custom']
    wait until page contains    Add New Ledger
    input text      xpath://*[@id="Name"]       Mishi
    input text      xpath://*[@id="Number"]     302002
    select from list by label       xpath://*[@id="Is_Cost_Head"]       Yes
    select from list by label       xpath://*[@id="Is_CostCenter"]      Yes
    click element       xpath://*[@id="s2id_LedgerGroupId"]
    input text      xpath://*[@id="select2-drop"]/div/input     Expenses
    click element       xpath://*[@id="select2-drop"]/ul/li[1]/div
    click element       xpath://*[@id="s2id_LedgerType"]/a/span
    input text      xpath://*[@id="select2-drop"]/div/input     Cash
    click element       xpath://*[@id="select2-drop"]/ul/li/div
    click element       xpath://*[@id="btnSave"]
    wait until page contains    New record saved succesfully


