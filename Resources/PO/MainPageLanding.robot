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

Kit Page Available
    Click element  //*[@id="plugin"]/div[2]/div/div/p[1]/a
    Wait Until Page Contains Element  //*[@id="module1"]
    Go Back

Clear View Page Available
    Click element  //*[@id="plugin"]/div[2]/div/div/p[2]/a
    Wait Until Page Contains  Why do I need a clear “field of view” to use Starlink?
    Go Back

AndroidApp Download
#    Element Should Contain  //*[@id="plugin"]/div[2]/div/div/div/a[2]  https://play.google.com/store/apps/details?id=com.starlink.mobile
    Page Should Contain Link  https://play.google.com/store/apps/details?id=com.starlink.mobile
#    Click element  //*[@id="plugin"]/div[2]/div/div/div/a[2]
#    Builtin.Sleep  2s
#    Switch window  Starlink - Apps On Google Play
#    Wait Until Page Contains Element  //*[@id="fcxH9b"]
#    Close Window
#    Switch Window  Starlink

IOSApp Download
    Page Should Contain Link  https://apps.apple.com/us/app/starlink/id1537177988
#    Click element  //*[@id="plugin"]/div[2]/div/div/div/a[1]
#    Builtin.Sleep  2s
#    Switch window  Starlink on the Apps Store
#    Wait Until Page Contains Element  /html/body/div[5]/main/div[2]/section[1]/div/div[2]/header/h1
#    Close Window
#    Switch Window  Starlink
