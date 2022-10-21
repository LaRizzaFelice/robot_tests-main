*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource   ../pageObjects/signInRobot.robot
Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${first_name_element}=          //*[@id="SignIn"]/div[3]/div/p[2]
${last_name_element}=           //div[@class='css-kcntxh']/p[@class='css-cpr2ex'][1]

${name} =   Felice
${lastname} =   La Rizza

*** Test Cases ***
login
    Go To Signin Page
    Location Should Be    https://brightshopapp.herokuapp.com/#/login
    Log In With Account


Go To Profile
    Go To Profile
    Element Should Contain    locator=${first_name_element}    expected=${name}
    Element Should Contain    locator=${last_name_element}    expected=${lastname}