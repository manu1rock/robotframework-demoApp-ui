*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${browser}  chrome
${url}   http://192.168.43.58:8888/
${username}

*** Keywords ***
Open My Browser
    [Arguments]  ${url}    ${browser}
    open browser   ${url}    ${browser}
    maximize browser window

Close My Browser
    close browser