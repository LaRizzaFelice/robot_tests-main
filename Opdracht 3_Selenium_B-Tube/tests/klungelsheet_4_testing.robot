*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    XML

*** Variables ***

*** Test Cases ***

ALTIJD EERST GEWOON INLOGGEN
     Click Element  xpath://*[@id="SignInButton"]
     Sleep  1s
     Input Text  xpath://*[@id="SignInEmail"]  felice.larizza@gmail.com
     Sleep  1s
     Input Text  xpath://*[@id="SignInPassword"]  Bunderken5
     Sleep  1s
     Click Element  xpath://*[@id="SignInButtonComplete"]
     sleep  2s

5.Negatieve credits kunnen niet aangekocht worden
    Click Element    //div[@class='css-1uhaiyw']/a[2]/button
    Sleep    2s
    Click Element    //div[@class='css-kcntxh']/button[@class='css-1e9674f']
    Sleep    2s
    Input Text    //form/input[@class='css-1ml9hd4']    -5
    Sleep    2s
    Click Element    //form/button[@class='css-1e9674f']
    Sleep    2s
    Select Frame    locator       






