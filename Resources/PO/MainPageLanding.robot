*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Navigate to
    Go to  ${BASE_URL}

Verify page loaded
    Wait Until Page Contains  Order Starlink