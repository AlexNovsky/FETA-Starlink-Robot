*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Navigate to
    Go to  ${BASE_URL}

Main Page Loaded
    Wait Until Page Contains  Order Starlink

Sattelites Info Available
    Click element  //*[@id="highspeed"]/div[2]/div/div[2]/div/a
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Rural Info Available
    Click element  //*[@id="rural"]/div[2]/div/div[2]/div/a
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Preserving Info Available
    Click element  //*[@id="preserving"]/div[2]/div/div/div/a
    Builtin.Sleep  2s
    Switch window  SpaceX - Updates
    Wait Until Page Contains Element  //*[@id="starlink-update-04-28-2020"]/div[3]
    Close Window
    Switch Window  Starlink

Keeping Clear Info Available
    Click element  //*[@id="keeping-clean"]/div[2]/div/div[2]/div/a
    Builtin.Sleep  2s
    Switch window  SpaceX - Updates
    Wait Until Page Contains Element  //*[@id="feature"]/div[2]/div[1]/h1
    Close Window
    Switch Window  Starlink

By Spacex Info Available
    Click element  //*[@id="engineered"]/div[2]/div/div/div/a
    Builtin.Sleep  2s
    Switch window  SpaceX
    Wait Until Page Contains Element  //*[@id="logo"]
    Close Window
    Switch Window  Starlink

Open Positions Page Available
    Click element  //*[@id="careers"]/div/div/div/div[2]/a
    Builtin.Sleep  2s
    Switch window  SpaceX - Careers
    Wait Until Page Contains Element  //*[@id="feature"]/div[2]/div[1]/h2
    Close Window
    Switch Window  Starlink
