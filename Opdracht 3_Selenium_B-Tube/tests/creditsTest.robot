*** Settings ***
Resource    ../pageObjects/basePage.robot
Resource    ../pageObjects/homePage.robot
Resource    ../pageObjects/signInRobot.robot
Resource    ../pageObjects/hireMovie.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${BUY_BUTTON}=              xpath://button[@class='css-1e9674f']
${INPUT_CREDITS}=           xpath://input[@placeholder='5']
${GET_VALUE_CREDITS}=       //*[@id="SignIn"]/div[3]/p[6]

${NEG_CREDIT}=              -10
${MYMOVIES}=                //a[@href='#/orders']//button[@id='OrdersPageButton']

${SELECTED_MOVIE}=          //div[@id='Action Movies']//img[@id='722603']
${NAME_SELECTED_MOVIE}=     Battlefield 2025

${RENTBUTTON}=              //button[@id='RentMovieButton']
${CLOSE_RENTWINDOW_BUTTON}=  //*[@id="CloseModal"]

*** Test Cases ***

5.Negatieve credits kunnen niet aangekocht worden
    Go To Signin Page
    Location Should Be    ${LOGIN_URL}
    Log In With Account
    Go to Add Credits page
    Sleep    2s
    ${CREDIT}=  Get Text    ${GET_VALUE_CREDITS}
    ${CREDIT}=     Convert To Integer    ${CREDIT}
    Click Element    ${BUY_BUTTON}
    Sleep  5s
    Input Text    ${INPUT_CREDITS}     ${NEG_CREDIT}
    Sleep    2s
    Click Element    ${BUY_BUTTON}
    Sleep    5s
    ${CREDIT_new}=  Get Text    ${GET_VALUE_CREDITS}
    ${CREDIT_new}=     Convert To Integer    ${CREDIT_new}
    Should Be Equal    ${CREDIT}  ${CREDIT_new}

3.Na het huren van een film, komt het in de lijst met gehuurde films
    sleep  5s
    Go To Homepage
    Sleep  2s
    Click Element    ${SELECTED_MOVIE}
    Sleep  2s
    Click Element    ${RENTBUTTON}
    Sleep  2s
    Wait Until Element Is Visible  ${MYMOVIES}
    Click element    ${MYMOVIES}
    Sleep  2s
    Page Should Contain     ${NAME_SELECTED_MOVIE}