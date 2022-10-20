*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Set Window Size  1680  1050
    Sleep   10s

Login
    Click Element  xpath://*[@id="SignInButton"]
    Sleep  5s
    Input Text  xpath://*[@id="SignInEmail"]  felice.larizza@gmail.com
    Sleep  5s
    Input Text  xpath://*[@id="SignInPassword"]  Bunderken5
    Sleep  5s
    Click Element  xpath://*[@id="SignInButtonComplete"]
