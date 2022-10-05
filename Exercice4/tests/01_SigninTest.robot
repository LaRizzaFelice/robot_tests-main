*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login Without Email Address
    Click Element  //a[normalize-space()='My Account']
    Sleep  1s
    Input Text  css:#password  kakapipi
    Click Element  xpath://input[@name='login']
    Sleep  1s
    Element text should be  css:ul[class='woocommerce-error']  Error: Username is required.

Login With Unexisting Account
    Click Element  //a[normalize-space()='My Account']
    Sleep  1s
    Input Text  css:#username  larizza.felice
    Sleep  1s
    Input Text  css:#password  kakapipi
    Sleep  1s
    Click Element  xpath://input[@name='login']
    Sleep  1s
    Element text should be  css:ul[class='woocommerce-error']  Error: the username larizza.felice is not registered on this site. If you are unsure of your username, try your email address instead.

Login Without Password
    Click Element  //a[normalize-space()='My Account']
     Sleep  1s
     Input Text  css:#username  larizza.felice
     Sleep  1s
     Click Element  xpath://input[@name='login']
     Sleep  1s
     Element text should be  css:ul[class='woocommerce-error']  Error: Password is required.
