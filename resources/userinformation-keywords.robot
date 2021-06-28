*** Settings ***
Library  SeleniumLibrary
Variables  ../page-objects/locators.py

*** Keywords ***
Verify User Information
    [Arguments]    ${username}    ${firstname}   ${familyname}    ${phonenumber}
    table cell should contain    ${userinformation_xpath_table}   2    2   ${username}
    table cell should contain    ${userinformation_xpath_table}   3    2   ${firstname}
    table cell should contain    ${userinformation_xpath_table}   4    2   ${familyname}
    table cell should contain    ${userinformation_xpath_table}   5    2   ${phonenumber}