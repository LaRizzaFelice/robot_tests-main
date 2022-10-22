*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource   ../pageObjects/signInRobot.robot
Resource    ../pageObjects/badLoginRobot.robot
Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${first_name_element}=          //*[@id="SignIn"]/div[3]/div/p[2]
${last_name_element}=           //div[@class='css-kcntxh']/p[@class='css-cpr2ex'][1]
${error_message} =              //div[@class='css-1y9e552']/code

${name} =                       Felice
${lastname} =                   La Rizza
${messageNotRegistered}=      This email has not been registered.
${messagePasswordIncorrect}=  Email or password incorrect.



*** Test Cases ***
8.Foutief inloggen geef een feedback voor foute username
    Go To Signin Page
    Location Should Be    ${LOGIN_URL}
    Log In With Bad Account
    Element Text Should Be    ${error_message}    ${messageNotRegistered}

9.Foutief inloggen geef een feedback voor foute paswoord
    Go To Signin Page
    Location Should Be    ${LOGIN_URL}
    Login With Bad Password
    Element Text Should Be    ${error_message}    ${messagePasswordIncorrect}