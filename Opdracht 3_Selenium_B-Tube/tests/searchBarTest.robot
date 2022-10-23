*** Settings ***
Resource    ../pageObjects/basePage.robot
Resource    ../pageObjects/homePage.robot
Resource    ../pageObjects/signInRobot.robot
Resource    ../pageObjects/hireMovie.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    SeleniumLibrary

*** Variables ***
${SEARCHBAR_INPUT}=                          xpath:/html/body/div/div/div[2]/header/div[2]/div/div/div/div/input
${DESIRED_MOVIE}=                            Fatman
${TRY_2_SEARCH_MOVIE}=                       Fat
${SELECT_SUGGESTION}=                        xpath:/html/body/div[2]/div/ul/li

*** Test Cases ***

10.De zoekbalk vult resultaten aan
    Go To Signin Page
    Location Should Be    ${LOGIN_URL}
    Log In With Account
    sleep  5s
    Wait Until Element Is Visible    ${GO_2_PROFILE}
    Sleep    2s
    Input Text  ${SEARCHBAR_INPUT}    ${TRY_2_SEARCH_MOVIE}
    Sleep    5s
    Click Element    ${SELECT_SUGGESTION}
    Sleep    5s
    Page Should Contain  ${DESIRED_MOVIE}
    Sleep    2s
    Click Button  ${CLOSE_RENTWINDOW_BUTTON}
    Sleep    2s

7.De zoekbalk helpt om een film op te zoeken
    Sleep    2s
    Input Text  ${SEARCHBAR_INPUT}    ${DESIRED_MOVIE}
    Sleep    5s
    Page Should Contain  ${DESIRED_MOVIE}
    Sleep    2s
    Click Button  ${CLOSE_RENTWINDOW_BUTTON}
    Sleep    2s




    






