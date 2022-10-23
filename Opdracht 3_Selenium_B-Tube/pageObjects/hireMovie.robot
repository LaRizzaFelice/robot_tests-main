*** Settings ***
Resource  basePage.robot
Resource  homePage.robot
Resource  signInRobot.robot
Resource  badLoginRobot.robot

*** Variables ***
${ADD_CREDITS_BUTTON}=          xpath://div[@class='css-kcntxh']/button[@class='css-1e9674f']
${ADD_CREDITS_SPACE}=           xpath://form/input[@class='css-1ml9hd4']
${BUY_BUTTON}=                  xpath://form/button[@class='css-1e9674f']
${CLOSE_RENTWINDOW_BUTTON}=     //*[@id="CloseModal"]


*** Keywords ***
Buy Credits to hire a movie
    Go To Profile
    Sleep    2s
    Wait Until Element Is Visible    ${ADD_CREDITS_BUTTON}
    Sleep    1s
    Click Element    ${ADD_CREDITS_BUTTON}
    Sleep    1s
    Input Text    ${ADD_CREDITS_SPACE}     10
    Sleep    1s
    Click Element    ${BUY_BUTTON}

Go to Add Credits page
    Go To Profile
    Sleep    2s
    Wait Until Element Is Visible    ${ADD_CREDITS_BUTTON}
    Sleep    1s
    Click Element    ${ADD_CREDITS_BUTTON}
    Sleep    1s
