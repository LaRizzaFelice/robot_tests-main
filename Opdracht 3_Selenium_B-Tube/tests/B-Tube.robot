*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

De zoekbalk helpt om een film op te zoeken
    Input Text  css:#mui-54694  fat
    sleep  1s
    click element  css:#mui-48366-option-0