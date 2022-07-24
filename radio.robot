*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}
${browser}

*** Test Cases ***
Testone

        open browser    ${url}      ${browser}
        select radio button     sex     female
        select radio button     exp     5
        #selecting checkbox
        select checkbox     yes