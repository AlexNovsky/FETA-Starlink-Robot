*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Navigate to
    Go to  ${BASE_URL}

Main Page Loaded
    Wait Until Page Contains  Order Starlink

Residential Page Loaded
    Click Element  //a[normalize-space()='Residential']
    Wait Until Page Contains  Order Starlink
