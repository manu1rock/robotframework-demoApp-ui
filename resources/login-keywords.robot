*** Settings ***
Library  SeleniumLibrary
Variables  ../page-objects/locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${url}    ${browser}
    open browser  ${url}   ${browser}
    maximize browser window

Click Login Link
    click link  ${login_link}

Enter UserName
    [Arguments]  ${username}
    Sleep   1s
    wait until element is visible  ${username_id_textfield}
    double click element  ${username_id_textfield}
    input text   ${username_id_textfield}  ${username}

Enter Password
    [Arguments]  ${password}
    input text   ${password_id_textfield}  ${password}

Click Login
    click button   ${login_xpath_button}

Verify Login
    title should be  User Information - Demo App

Close My Browser
    close browser