*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demoprojects.e-connectsolutions.com/eprash-dev

*** Test Cases ***
Testcase1
    open browser    ${url}     ${browser}

    #set selenium speed  0.5s
    Logintoapp
    Addledger
    Updateledge
    Deleteledge


*** Keywords ***
Logintoapp
    wait until page contains    Password
    input text  id:LoginIdForShow      econnect
    input text  id:PasswordForShow    admin
    click element  xpath://*[@id="btnLogin"]
    #sleep   3s
    go to   https://demoprojects.e-connectsolutions.com/eprash-dev/ACC/Ledger

Addledger
    click element   xpath://a[@id='modals-bootbox-custom']
    wait until page contains    Add New Ledger
    input text      xpath://*[@id="Name"]       Mitali L
    input text      xpath://*[@id="Number"]     30012000
    select from list by label       xpath://*[@id="Is_Cost_Head"]       Yes
    select from list by label       xpath://*[@id="Is_CostCenter"]      Yes
    click element       xpath://*[@id="s2id_LedgerGroupId"]
    input text      xpath://*[@id="select2-drop"]/div/input     Expenses
    sleep   2s
    click element       xpath://*[@id="select2-drop"]/ul/li[1]/div
    click element       xpath://*[@id="s2id_LedgerType"]/a/span
    input text      xpath://*[@id="select2-drop"]/div/input     Cash
    click element       xpath://*[@id="select2-drop"]/ul/li/div
    click element       xpath://*[@id="btnSave"]
    sleep   1s
    #wait until page contains    New record saved succesfully

Updateledge
    click element      xpath://div[@class='btn-group-xs pull-right']//a[@class='btn btn-primary BackToList']
    click element   id:SearchText
    input text      id:SearchText   Mitali L
    click element   xpath://*[@id="BtnSearchfilter"]/i
    wait until page contains    Account Number
    sleep   5s
    click element   xpath://*[@id="classListing"]//table//tbody//tr//*[@class="btn btn-sm btn-success OpenAddEdit"]//i[@class='fa fa-pencil']
    #click element   xpath://tr//td//a[@class='btn btn-sm btn-success OpenAddEdit' and @title='Click here to Edit']
    #click element   xpath://span[contains(text(),'Subin SK')]
    #click element   xpath://div[@class='modal-header']//a[@class='btn btn-info']
    click element   xpath://*[@id="Name"]
    input text  xpath://*[@id="Name"]   Mitali Lohar
    input text  xpath://*[@id="Number"]     17082001
    click element   xpath://*[@id="btnSave"]

Deleteledge

    click element   id:SearchText
    input text      id:SearchText   Mitali Lohar
    click element   xpath://*[@id="BtnSearchfilter"]/i
    sleep   2s
    click link      xpath://*[@id="classListing"]//table//tbody//tr//*[@class="btn btn-sm btn-danger deleteLink"][1]
    sleep   1s
    click element      //button[@class='btn btn-primary' and text()='OK']