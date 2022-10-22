*** Settings ***
Resource    ../pageObjects/basePage.robot
Resource    ../pageObjects/homePage.robot
Resource    ../pageObjects/signInRobot.robot
Resource    ../pageObjects/hireMovie.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${GET_VALUE_CREDITS}=                           //*[@id="SignIn"]/div[3]/p[6]

${SELECTED_MOVIE_2CHANGE_4_TEST}=               //div[@id='Action Movies']//img[@id='581392']

${RENTBUTTON}=                                  //button[@id='RentMovieButton']
${CLOSE_RENTWINDOW_BUTTON}=                     //*[@id="CloseModal"]

*** Test Cases ***

4.Na het huren van een film, dalen de credits met de juiste waarde
     Go To Signin Page
     Location Should Be    ${LOGIN_URL}
     Log In With Account
     Go To Profile
     Sleep    5s
     ${CREDIT}=  Get Text    ${GET_VALUE_CREDITS}
     ${CREDIT}=     Convert To Integer    ${CREDIT}
     Go To homePage
     Sleep  5s
     Click Element    ${SELECTED_MOVIE_2CHANGE_4_TEST}
     Sleep  2s
     Click Element    ${RENTBUTTON}
     Sleep  2s
     Go To Profile
     Sleep  5s
     ${CREDIT_new}=  Get Text    ${GET_VALUE_CREDITS}
     ${CREDIT_new}=     Convert To Integer    ${CREDIT_new}
     Should Not Be Equal    ${CREDIT}  ${CREDIT_new}





