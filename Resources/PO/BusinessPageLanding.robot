*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Navigate to
    Go to  ${BASE_URL}

Main Page Loaded
    Wait Until Page Contains  Order Starlink

Business Page Loaded
#    Click Element  //a[contains(@href, "/business")]
    Go to  ${BUSINESS_URL}
    Wait Until Page Contains   Starlink Business

Page Contains address texfield
    Page Should Contain Element   //label[@for='service-input']

Page Contains Business Verbiage
    Page Should Contain  HIGHER RELIABILITY FOR HIGH DEMAND USERS
    Page Should Contain  HIGHER SPEED, LOW LATENCY
    Page Should Contain  EASY SETUP & PRIORITY SUPPORT
    Page Should Contain  UNLIMITED SERVICE LOCATIONS
    Page Should Contain  For more information on Starlink Business, please see our

Page Contains Apps Links
    Page Should Contain Element  //a[contains(@href, "starlink/id1537177988")]
    Page Should Contain Element  //a[contains(@href, "com.starlink.mobile")]

Page Contains Hyperlinks
    Page Should Contain Link  //a[normalize-space()='Privacy Policy']
    Page Should Contain Link  //a[normalize-space()='requires a clear view of the sky to connect']
    Page Should Contain Link  //a[@class='faq-link']
    Page Should Contain Link  //a[normalize-space()='Satellite Operators']
    Page Should Contain Link  //a[normalize-space()='Privacy & Legal']
    Page Should Contain Link  //a[normalize-space()='spacex.com']