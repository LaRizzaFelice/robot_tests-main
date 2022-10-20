*** Settings ***
Resource  basePage.robot
Resource  homePage.robot

*** Variables ***
${EMAIL_LOGIN_TXT}=       xpath://input[@id='SignInEmail']
${PASSWORD_LOGIN_TXT}=    xpath://*[@id="SignInPassword"]
${LOGIN_BTN}=             xpath://*[@id="SignInButtonComplete"]

${emailadress}=           felice.larizza@gmail.com
${password}=              Bunderken5

*** Keywords ***
Log In With Account
    Wait Until Element Is Visible  ${EMAIL_LOGIN_TXT}
    Input Text  ${EMAIL_LOGIN_TXT}  ${emailadress}
    Input Text  ${PASSWORD_LOGIN_TXT}  ${password}
    Sleep    2s
    Click Element  ${LOGIN_BTN}
    Sleep    2s