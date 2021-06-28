*** Settings ***
Library  SeleniumLibrary
Variables  ../page-objects/locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${url}    ${browser}
    open browser  ${url}   ${browser}
    maximize browser window

Click Registration Link
    click link  ${register_link}

Enter UserName
    [Arguments]  ${username}
    Sleep   1s
    wait until element is visible  ${username_id_textfield}
    double click element  ${username_id_textfield}
    INPUT TEXT   ${username_id_textfield}  ${username}

Enter Password
    [Arguments]  ${password}
    input text   ${password_id_textfield}  ${password}

Enter First Name
    [Arguments]  ${firstname}
    input text   ${firstname_id_textfield}  ${firstname}

Enter Family Name
    [Arguments]  ${familyname}
    input text   ${familyname_id_textfield}  ${familyname}

Enter Phone Number
    [Arguments]  ${phonenumber}
    input text   ${phonenumber_id_textfield}  ${phonenumber}

Click Register
    click button   ${register_xpath_button}

Verify Registration
    title should be  Log In - Demo App

Close My Browser
    close browser