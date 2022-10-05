*** Settings ***
Resource            ../pageObjects/basePage.robot
Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
*** Test Cases ***
// CASE 1 //
    Click Element  css:#username
    Sleep  1s
    Input Text    css:#username    tomsmith
    Sleep  1s
    Click Element    css:#password
    Sleep  1s
    Input Text    css:#password    incorrectPassword
    Sleep  1s
    Click Element    css:.fa.fa-2x.fa-sign-in
    Sleep  1s
    Element Should Contain    css:#flash    Your password is invalid!
    Sleep  1s

// CASE 2 //
    Click Element  css:#username
    Sleep  1s
    Input Text    css:#username    tom
    Sleep  1s
    Click Element    css:#password
    Sleep  1s
    Input Text    css:#password    incorrectPassword
    Sleep  1s
    Click Element    css:.fa.fa-2x.fa-sign-in
    Sleep  1s
    Element Should Contain    css:#flash     Your username is invalid!
    Sleep  1s

// CASE 3 //
    Click Element  css:#username
    Sleep  1s
    Input Text    css:#username    tomsmith
    Sleep  1s
    Click Element    css:#password
    Sleep  1s
    Input Text    css:#password    SuperSecretPassword!
    Sleep  1s
    Click Element    css:.fa.fa-2x.fa-sign-in
    Sleep  1s
    Element Should Contain    css:#flash    You logged into a secure area!
    Sleep  1s

// CASE 4 //
    Click Element  css:#username
    Sleep  1s
    Input Text    css:#username    tomsmith
    Sleep  1s
    Click Element    css:#password
    Sleep  1s
    Input Text    css:#password    SuperSecretPassword!
    Sleep  1s
    Click Element    css:.fa.fa-2x.fa-sign-in
    Sleep  1s
    Click Element    css:.button.secondary.radius
    Element Should Contain    css:div[class='example'] h2    Login Page
    Sleep  1s