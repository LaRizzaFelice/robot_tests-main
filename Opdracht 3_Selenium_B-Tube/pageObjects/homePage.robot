*** Settings ***
Resource  basePage.robot

*** Variables ***

${SIGNINBUTTON}=        xpath://button[@id='SignInButton']
${GO_2_PROFILE}=        xpath://a[@href='#/profile']//button[@id='OrdersPageButton']
${HOMEPAGE_BUTTON}=     xpath//*[@id="Logo"]

*** Keywords ***

Go To Signin Page
    Sleep    2s
    Wait Until Element Is Visible  ${SIGNINBUTTON}
    Sleep    2s
    Click Element  ${SIGNINBUTTON}
    Sleep    2s

Go To Profile
    Sleep    2s
    Wait Until Element Is Visible    ${GO_2_PROFILE}
    Sleep    2s
    Click Element    ${GO_2_PROFILE}
    Sleep    2s









