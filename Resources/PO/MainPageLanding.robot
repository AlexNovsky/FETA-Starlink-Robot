*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Navigate to
    Go to  ${BASE_URL}

Main Page Loaded
    Wait Until Page Contains  Order Starlink

Sattelites info available
    Click element  //*[@id="highspeed"]/div[2]/div/div[2]/div/a
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Rural info available
    Click element  //*[@id="rural"]/div[2]/div/div[2]/div/a
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Preserving info available
    Click element  //*[@id="preserving"]/div[2]/div/div/div/a
    Switch window  SpaceX - Updates
    Wait Until Page Contains Element  //*[@id="starlink-update-04-28-2020"]/div[3]
    Close Window
    Switch Window  Starlink