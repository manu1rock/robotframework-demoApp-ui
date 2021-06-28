*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  ../resources/login-keywords.robot
Resource  ../resources/registration-keywords.robot
Resource  ../resources/common-functionalities.robot
Resource  ../resources/userinformation-keywords.robot
Suite Setup  Generate Username
Test Setup  common-functionalities.Open My Browser   ${url}  ${browser}
Test Teardown  common-functionalities.Close My Browser
Documentation    Smoke Test


*** Variables ***
${browser}  chrome
${url}   http://localhost:8888/
#${username}
${password}  test@123
${firstname}   Michal
${familyname}   Dev
${phonenumer}   721345372

*** Keywords ***
Generate Username
    ${username}=  generate random string
    Log  ${username}
    Set Suite Variable    ${username}

*** Test Cases ***
Register user with valid inputs
    Click Registration Link
    registration-keywords.Enter UserName  ${username}
    registration-keywords.Enter Password  ${password}
    Enter First Name  ${firstname}
    Enter Family Name  ${familyname}
    Enter Phone Number  ${phonenumer}
    Click Register
    Verify Registration
    registration-keywords.Close My Browser

Login with registered user and verify user information
    Click Login Link
    login-keywords.Enter UserName  ${username}
    login-keywords.Enter Password  ${password}
    Click Login
    Verify Login
    userinformation-keywords.Verify User Information    ${username}     ${firstname}    ${familyname}    ${phonenumer}
    login-keywords.Close My Browser