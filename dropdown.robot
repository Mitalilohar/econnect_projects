*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demoprojects.e-connectsolutions.com/eprash-dev/Dashboard
${browser}      chrome

*** Test Cases ***
Dropdowntest
        open browser        ${url}      ${browser}
        Maximize Broswer Window
        select from list by label