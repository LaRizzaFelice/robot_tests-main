*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource   ../pageObjects/signInRobot.robot
Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***



*** Test Cases ***
6.Een profiel heeft een avatar
     Go To Signin Page
     Location Should Be    ${LOGIN_URL}
     Log In With Account
     sleep  2s
     Go To Homepage












