*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
*** Variables ***

${browser}  chrome
${url}  https://demoprojects.e-connectsolutions.com/eprash-dev

*** Test Cases ***
Testcase1
    Load json
    open browser    ${url}     ${browser}
    #set selenium speed  0.5s
    #Logintoapp
    #Addledger


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
    input text      xpath://*[@id="Name"]       Kaustub
    input text      xpath://*[@id="Number"]     606060
    #select from list by label       xpath://*[@id="Is_Cost_Head"]       Yes
    #select from list by label       xpath://*[@id="Is_CostCenter"]      Yes
    click element       xpath://*[@id="s2id_LedgerGroupId"]
    input text      //div[@id='select2-drop']//div[@class='select2-search']//input[@type='text']    Expenses
    press key       //div[@id='select2-drop']//div[@class='select2-search']//input[@type='text']    \ue007
    #click element       //div[@id='select2-drop']//ul[@class='select2-results']//li[@class='select2-results-dept-0 select2-result select2-result-selectable']//div[@xpath='1']
    click element       xpath://*[@id="s2id_LedgerType"]/a/span
    input text      //div[@id='select2-drop']//div[@class='select2-search']//input[@type='text']     Cash
    press key       //div[@id='select2-drop']//div[@class='select2-search']//input[@type='text']     \ue007
    #click element       xpath://div[@id='select2-drop']//div[@class='select2-result-label']
    click element       xpath://*[@id="btnSave"]
    wait until page contains    New record saved succesfully

Load json
    ${data}     get file    Data.json
    ${object}   evaluate    json.loads('''${data}''')   json
    Log many    ${object["Ledger"]}  console=yes
    Log many    ${object["Ledger"]["Name"]}  console=yes
    input text    ${object["Ledger"]["Name"]["Locator"]["Locator1"]}  ${object["Ledger"]["Name"]["Value"]}
    Click Element   ${object["Ledger"]["Name"]["Locator"]}