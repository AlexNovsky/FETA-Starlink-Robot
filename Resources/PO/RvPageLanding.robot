*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Navigate to
    Go to  ${BASE_URL}

Main Page Loaded
    Wait Until Page Contains  Order Starlink

RV Page Loaded
    Click Element  //div[@class="rv"]/a[contains(@href, "/rv")]
    Wait Until Page Contains    STARLINK FOR RVs

Active Coverage link accessible
    Page Should Contain Element  //a[contains(@href, "/map?source=rv")]

Page Contains address texfield
    Page Should Contain Element   //label[@for='service-input']

Page Contains RV Verbiage
    Page Should Contain  WORK AND PLAY AT REMOTE LOCATIONS
    Page Should Contain  PAY AS YOU GO
    Page Should Contain  EASY SET UP
    Page Should Contain  Try Starlink for RVs for up to 30 days

Page Contains Apps Links
    Page Should Contain Element  //a[contains(@href, "starlink/id1537177988")]
    Page Should Contain Element  //a[contains(@href, "com.starlink.mobile")]

Page Contains Hyperlinks
    Page Should Contain Link  //a[normalize-space()='Privacy Policy']
#    Page Should Contain Link  //a[contains(@href, "/legal/privacy-policy")]
    Page Should Contain Link  //a[normalize-space()='CHECK AVAILABILITY']
    Page Should Contain Link  //a[normalize-space()='ORDER NOW']
    Page Should Contain Link  //a[normalize-space()='Privacy & Legal']
    Page Should Contain Link  https://www.spacex.com/
    Page Should Contain Link  https://starlink.com/satellite-operators