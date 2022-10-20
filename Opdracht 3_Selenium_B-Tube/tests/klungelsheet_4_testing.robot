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

6.Een profiel heeft een avatar
         Sleep    5s
         click Element   //*[@id="OrdersPageButton"]
         Sleep    5s
         Wait Until Element Is Visible    //div[@class='css-kcntxh']/img








