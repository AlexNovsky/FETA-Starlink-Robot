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
    Sleep  2s
    Click Element  //a[contains(@href, "satellites")]
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Rural Info Available
    Click element  //a[contains(@href, "/connecting-the-unconnected")]
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Preserving Info Available
    Click element  //a[contains(@href, "update-04-28-2020")]
    Sleep  2s
    Switch window  SpaceX - Updates
    Wait Until Page Contains  Astronomy Discussion with National Academy of Sciences
    Close Window
    Switch Window  Starlink

Keeping Clear Info Available
    Click element  //a[contains(@href, "sustainability")]
    Sleep  2s
    Switch window  SpaceX - Updates
    Wait Until Page Contains  SpaceX's Approach to Space Sustainability and Safety
    Close Window
    Switch Window  Starlink

By Spacex Info Available
    Click element  //a[@href="https://www.spacex.com/"]
    Sleep  3s
    Switch window  SpaceX
    Wait Until Page Contains Element  //*[@id="logo"]
    Close Window
    Switch Window  Starlink

Open Positions Page Available
    Click element  //a[contains(@href, "spacex.com/careers")]
    Sleep  2s
    Switch window  SpaceX - Careers
    Wait Until Page Contains  Find your future
    Close Window
    Switch Window  Starlink

Kit Page Available
    Click element  //a[contains(@href, "/kit")]
    Wait Until Page Contains  What's in the box
    Go Back

Clear View Page Available
    Click element  //*[contains(@href, "support.starlink.com/?topic=4badc520-cf8e-b3aa-dd49-b731686d5bf1")]
    Wait Until Page Contains  Why do I need a clear “field of view” to use Starlink?
    Go Back

AndroidApp Download
    Sleep  5s
    Click element  //a[contains(@href, "com.starlink.mobile")]
    Sleep  2s
    Switch window  Starlink - Apps on Google Play
    Wait Until Page Contains Element  //*[@id="fcxH9b"]
    Close Window
    Switch Window  Starlink

IOSApp Download
    Click element  //a[contains(@href, "starlink/id1537177988")]
#    //*[contains(@href, "apple")]
#    //*[contains(@href, "google")]
#    //a[.="Download for Android"]
    Sleep  2s
    Switch window  Starlink on the App Store
    Wait Until Page Contains Element  /html/body/div[5]/main/div[2]/section[1]/div/div[2]/header/h1
    Close Window
    Switch Window  Starlink
