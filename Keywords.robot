*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     DateTime
Resource    Page object/Ledgerlist.robot
Resource  ../Resource/Page object/Monthreport.robot
Resource  ../Resource/Page object/AnnexureCode.robot

*** Keywords ***
Go to ERP
    [Documentation]  Open ERP Login page
    Ledgerlist.Logintoapp
    Ledgerlist.Load json

Open Ledger Listing Report
    [Documentation]  Open Ledger Listing report and select filter
    Ledgerlist.Ledgerlisting
    LedgerList.GetDate
    Ledgerlist.Viewbutton

Verify Report
    [Documentation]  Verify if Report contains any error
    Ledgerlist.check error

Go to Loginpage
    [Documentation]  Open ERP Login page
    Monthreport.Logintoapp
    Monthreport.Load json

Open ReportOfSalary
    [Documentation]  Open Monthly Salary Report page
    Monthreport.ViewSalary

Verify Salary Report
    [Documentation]  Verify if Salary Report contains any error
    Monthreport.VerifyReportOfSalary

Open ReportOfArrear
    [Documentation]  Open Monthly Arrear Report page
    Monthreport.ViewArrear

Verify ReportOfArrear
    [Documentation]  Verify if Arrear Report contains any error
    Monthreport.VerifyReportOfArrear

Open LeaveEncashment
    [Documentation]  Open LeaveEncashment Report page
    Monthreport.ViewLeaveEncashment

Verify LeaveEncashment
    [Documentation]  Verify if LeaveEncashment Report contains any error
    Monthreport.VerifyLeaveEncashment

Open Bonus
    [Documentation]  Open Bonus Report page
    Monthreport.ViewBonus

Verify Bonus
    [Documentation]  Verify if Bonus Report contains any error
    Monthreport.VerifyBonus


LoginForAnnexure
    [Documentation]  Open ERP Login page for Annexure report
    AnnexureCode.Logintoapp3
    AnnexureCode.Loadjson1

Open Annexure Report
    [Documentation]  Open Annexure Report
    AnnexureCode.OpenAnnexurepage

Verify Annexure Report
    [Documentation]  Verify if Annexure Report contains any error
    AnnexureCode.VerifyAnnexure
