*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login Without Email Address
    Click Element  //a[normalize-space()='My Account']
    Sleep  1s
    Input Text  css:#reg_password  Pass4Training20
    Sleep  1s
    Click Element  xpath://input[@name='register']
    Sleep  1s
    Element text should be  css:ul[class='woocommerce-error']  Error: Please provide a valid email address.

Register without password
    Click Element  //a[normalize-space()='My Account']
     Sleep  1s
     Input Text  css:#reg_email  larizza.felice@gmail.com
     Sleep  1s
     Click Element  xpath://input[@name='register']
     Sleep  1s
     Element text should be  css:ul[class='woocommerce-error']  Error: Please enter an account password.