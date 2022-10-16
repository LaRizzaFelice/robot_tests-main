*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***
8.Foutief inloggen geef een feedback voor foute username
    Click Element  xpath://*[@id="SignInButton"]
    Sleep  1s
    Input Text  xpath://*[@id="SignInEmail"]  felice.larizzaa@gmail.com
    Sleep  1s
    Input Text  xpath://*[@id="SignInPassword"]  Bunderken5
    Sleep  1s
    Click Element  xpath://*[@id="SignInButtonComplete"]
    sleep  2s
    Element text should be  //div[@class='css-1y9e552']/code    This email has not been registered.

9.Foutief inloggen geef een feedback voor foute paswoord
    Click Element  xpath://*[@id="SignInButton"]
    Sleep  1s
    Input Text  xpath://*[@id="SignInEmail"]  felice.larizza@gmail.com
    Sleep  1s
    Input Text  xpath://*[@id="SignInPassword"]  Bunderken55
    Sleep  1s
    Click Element  xpath://*[@id="SignInButtonComplete"]
    sleep  2s
    Element text should be  //div[@class='css-1y9e552']/code    Email or password incorrect.


2.Na het inloggen, kom je op de juiste pagina terecht
     Click Element  xpath://*[@id="SignInButton"]
     Sleep  1s
     Input Text  xpath://*[@id="SignInEmail"]  felice.larizza@gmail.com
     Sleep  1s
     Input Text  xpath://*[@id="SignInPassword"]  Bunderken5
     Sleep  1s
     Click Element  xpath://*[@id="SignInButtonComplete"]
     sleep  5s
     Wait Until Element Is Visible    //a[@href='#/profile']//button[@id='OrdersPageButton']


1.Een profiel toon de correcte voor- en achternaam
    Sleep    2s
    click Element   xpath://a[@href='#/profile']//button[@id='OrdersPageButton']
    Sleep    2s
    Element text should be  //p[@class='css-cpr2ex'][1]    Felice
    Element text Should Be  //div[@class='css-kcntxh']/p[@class='css-cpr2ex'][1]  La Rizza

6.Een profiel heeft een avatar
    Sleep    2s
    click Element   xpath://a[@href='#/profile']//button[@id='OrdersPageButton']
    Sleep    2s
    Wait Until Element Is Visible    //div[@class='css-kcntxh']/img

5.Negatieve credits kunnen niet aangekocht worden
    Click Element    //div[@class='css-1uhaiyw']/a[2]/button
    Sleep    2s
    Click Element    //div[@class='css-kcntxh']/button[@class='css-1e9674f']
    Sleep    2s
    Input Text    //form/input[@class='css-1ml9hd4']    -5
    Sleep    2s
    Click Element    //form/button[@class='css-1e9674f']
    Sleep    2s
    Element Text Should Be    //div[@class='css-kcntxh']/p[6]    0
    Sleep    2s


3.Na het huren van een film, komt het in de lijst met gehuurde films
    Click Element    //div[@class='css-9enwqs']/a/picture/img
    Sleep    2s
    Click Element    //div[@class='css-ptqyzx']/img[2]
    Sleep    2s
    Click Element    //button[@id='RentMovieButton']
















