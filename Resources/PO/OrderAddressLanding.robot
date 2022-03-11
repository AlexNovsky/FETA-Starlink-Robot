*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***
${ADDRESS}  //*[@id="service-input"]

*** Keywords ***
Navigate to
    Go to  ${BASE_URL}
    Wait Until Page Contains  Order Starlink

Main Page Loaded
    Wait Until Page Contains  Order Starlink

Valid Address Submitted
    Press Keys  ${ADDRESS}  ${VALID ORDER ADDRESS}
    Sleep  1s
    Press Keys  ${ADDRESS}  UP  #Emulating user's inputs
    Press Keys  ${ADDRESS}  RETURN  #Emulating user's inputs
    Click Element  //*[@type="submit"]

Order Page Loaded
    Wait Until Page Contains Element  //a[@class="intro-text"]
    Go Back

Invalid Address Show Error
    Press Keys  ${ADDRESS}  ${INVALID ORDER ADDRESS}
    Sleep  1s
    Click Element  //*[@type="submit"]
    Sleep  2s
    Wait Until Page Contains  Please include an address or plus code

