*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ./Resources/Common/CommonWeb.robot
Resource  ./Resources/MainPageApp.robot
Resource  ./Resources/OrderAddressApp.robot
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/starlink.robot

*** Variables ***

*** Test Cases ***
Should be able to access to main page and navigate to all links
    [Documentation]  Check if main page, all links and Info pages are available and loaded properly
    [Tags]  Regression
    MainPageApp.Go to main page
    MainPageApp.Verify main page loaded
    MainPageApp.Verify Logo Clickable
    MainPageApp.Verify Sattelites info available
    MainPageApp.Verify Rural info available
    MainPageApp.Verify Preserving Sky Info Available
    MainPageApp.Verify Clear Space Info Available
    MainPageApp.Verify By Spacex Info Available
    MainPageApp.Verify Open Positions Page Available
    MainPageApp.Verify Starlink Kit Page Available
    MainPageApp.Verify Clear View Page Available
    MainPageApp.Verify Apps Available For Downloading
    MainPageApp.Verify Privacy Policy Address Page Available
    MainPageApp.Verify Privacy Policy Bottom Page Available
    MainPageApp.Verify Visit Spacex Available

Should be able to check service availability for valid address
    [Documentation]  Check if main page, all links and Info pages are available and loaded properly
    [Tags]  Regression
    OrderAddressApp.Go to main page
#    OrderAddressApp.Verify Valid Address Submitted    #Dissabled due webapp automation restrictions
#    OrderAddressApp.Verify Order Page Loaded          #Dissabled due webapp automation restrictions
    OrderAddressApp.Verify Invalid Address Show Error

*** Keywords ***
