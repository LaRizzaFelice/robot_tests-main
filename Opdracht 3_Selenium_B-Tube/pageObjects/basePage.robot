*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Set Window Size  1680  1050
    Sleep   10s

LOGIN
    Click Element  xpath://*[@id="SignInButton"]
    Sleep  1s
    Input Text  xpath://*[@id="SignInEmail"]  larizza.felice@gmail.com
    Sleep  1s
    Input Text  xpath://*[@id="SignInPassword"]  Giulia10?
    Sleep  1s
    Click Element  xpath://*[@id="SignInButtonComplete"]
