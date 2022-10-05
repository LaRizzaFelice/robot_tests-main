*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Een profiel heeft een foto
    Click Element  css:div[class='css-1idhddb'] div:nth-child(2)
    Sleep  1s
    Click Element  css:#SignInButton
    Sleep  1s
    Input Text  css:#SignInEmail  larizza.felice@gmail.com
    Sleep  1s
    Input Text  css:#SignInPassword  Giulia10?
    Sleep  1s
    Click Element  css:#SignInButtonComplete

