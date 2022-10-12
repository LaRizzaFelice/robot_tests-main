*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Setup  LOGIN
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Inloggen

    Click Element  xpath://*[@id="SignInButton"]
    Sleep  1s
    Input Text  xpath://*[@id="SignInEmail"]  larizza.felice@gmail.com
    Sleep  1s
    Input Text  xpath://*[@id="SignInPassword"]  Giulia10?
    Sleep  1s
    Click Element  xpath://*[@id="SignInButtonComplete"]




