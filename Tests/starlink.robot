*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ./Resources/Common/CommonWeb.robot
Resource  ./Resources/MainPageApp.robot
#Test Setup  Begin Web Test
#Test Teardown  End Web Test

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/starlink.robot

*** Variables ***

*** Test Cases ***
Should be able to access to main page
    [Documentation]  Check if main page is loaded
    [Tags]  Regression
    MainPageApp.Go to main page
    MainPageApp.Verify page loaded

Should be able to navigate to Learn more pages





#Should be able to access Sign In page
#    [Documentation]  Check if main page is loaded and Sign In page is available
#    [Tags]  Regression
#    StarlinkSignInApp.go to landing page
#
#Main Starlink page should be opened successfully
#    [Documentation]  Check if address is available
#    [Tags]  Smoke
##    Open Browser  ${BASE_URL}  ${BROWSER}
#    Wait Until Page Contains  Order Starlink
#    Click element  //*[@alt="Open Menu"]
##    Input Text  //*[@id="service-input"]  3629 Keechi Creek Dr, Prosper, TX 75078, USA
#    Sleep  1s
#    Click element  sign in
##    Press Keys  None  RETURN
#    Sleep  3s
#    #Execute Manual Step  Do something
##    Click Button  //*[@type="submit"]
##    Sleep  3s
##    Close Browser

*** Keywords ***
