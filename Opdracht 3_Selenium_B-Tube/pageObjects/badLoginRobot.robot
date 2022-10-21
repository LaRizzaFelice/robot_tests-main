*** Settings ***
Resource  basePage.robot
Resource  homePage.robot
Resource  signInRobot.robot

*** Variables ***
${EMAIL_LOGIN_TXT}=       xpath://input[@id='SignInEmail']
${PASSWORD_LOGIN_TXT}=    xpath://*[@id="SignInPassword"]
${LOGIN_BTN}=             xpath://*[@id="SignInButtonComplete"]

${bademailadress}=           felice.larizzaa@gmail.com
${badpassword}=              Bunderken555

*** Keywords ***
Log In With Bad Account
    Wait Until Element Is Visible  ${EMAIL_LOGIN_TXT}
    Input Text  ${EMAIL_LOGIN_TXT}  ${bademailadress}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Sleep    2s
    Click Element  ${LOGIN_BTN}
    Sleep    2s

Login With Bad Password
    Log In With Bad Account
        Wait Until Element Is Visible  ${EMAIL_LOGIN_TXT}
        Input Text  ${EMAIL_LOGIN_TXT}  ${emailadress}
        Input Text  ${PASSWORD_LOGIN_TXT}  ${badpassword}
        Sleep    2s
        Click Element  ${LOGIN_BTN}
        Sleep    2s
