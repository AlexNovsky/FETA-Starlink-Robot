*** Settings ***
Library  SeleniumLibrary
Resource  ../../Data/InputData.robot

*** Variables ***


*** Keywords ***
Navigate to
    Go to  ${BASE_URL}

Main Page Loaded
    Wait Until Page Contains  Order Starlink

Logo Clickable
    Click Element  xpath=/html/body/app-root/public-header-navigation/div/mat-drawer-container/mat-drawer-content/div/div/div/a
    Wait Until Page Contains  Order Starlink

Sattelites Info Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="highspeed"]/div[2]/div/div[2]
    [Documentation]  Scrolling element into view is a neccessary step for Chrome compatibility.
    ...              On some websites Chrome automation process clicking on the specific coordinates of the element.
    ...              If the element located on the bottom side of the Chrome window, Chrome dropping an error
    ...              "Element is not clicable at point...".
    ...              Solution for this Chrome webdriver defect is to scroll to the bigger part of webpage, where target
    ...              element is located.
    ...              May be removed for testing on any different browsers than Chrome.
    Sleep  2s
    Click element  //a[contains(@href, "satellites")]
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Rural Info Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="highspeed"]/div[2]/div/div[2]
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="rural"]/div[2]/div/div[2]
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Sleep  2s
    Click element  //a[contains(@href, "/connecting-the-unconnected")]
    Wait Until Page Contains Element  //*[@id="hero"]
    Go Back

Preserving Info Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="highspeed"]/div[2]/div/div[2]
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="preserving"]/div[2]/div/div
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Sleep  2s
    Click element  //a[contains(@href, "update-04-28-2020")]
    Sleep  2s
    Switch window  SpaceX - Updates
    Wait Until Page Contains  Astronomy Discussion with National Academy of Sciences
    Close Window
    Switch Window  Starlink

Keeping Clear Info Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="keeping-clean"]/div[2]/div/div[2]
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Sleep  1s
    Click element  //a[contains(@href, "sustainability")]
    Sleep  1s
    Switch window  SpaceX - Updates
    Wait Until Page Contains  SpaceX's Approach to Space Sustainability and Safety
    Close Window
    Switch Window  Starlink

By Spacex Info Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="keeping-clean"]/div[2]/div/div[2]
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="engineered"]/div[2]/div/div
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Sleep  1s
    Click element  //a[@href="https://www.spacex.com/"]
    Switch window  SpaceX
    Wait Until Page Contains Element  //*[@id="logo"]
    Close Window
    Switch Window  Starlink

Open Positions Page Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="careers"]/div/div/div
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Click element  //a[contains(@href, "spacex.com/careers")]
    Sleep  1s
    Switch window  SpaceX - Careers
    Wait Until Page Contains  Find your future
    Close Window
    Switch Window  Starlink

Kit Page Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="highspeed"]/div[2]/div/div[2]
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="plugin"]/div[2]/div/div
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Sleep  1s
    Click element  //a[contains(@href, "/kit")]
    Wait Until Page Contains  What's in the box
    Go Back

Clear View Page Available
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="highspeed"]/div[2]/div/div[2]
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="plugin"]/div[2]/div
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Sleep  1s
    Click element  //a[contains(@href, "support.starlink.com/?topic=4badc520-cf8e-b3aa-dd49-b731686d5bf1")]
    Wait Until Page Contains  Why do I need a clear “field of view” to use Starlink?
    Go Back

AndroidApp Download
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="highspeed"]/div[2]/div/div[2]
    Run Keyword And Ignore Error  Scroll Element Into View  //*[@id="plugin"]/div[2]/div/div
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Sleep  1s
    Click element  //a[contains(@href, "com.starlink.mobile")]
    Switch window  Starlink - Apps on Google Play
    Wait Until Page Contains Element  //*[@id="fcxH9b"]
    Close Window
    Switch Window  Starlink

IOSApp Download
    Click element  //a[contains(@href, "starlink/id1537177988")]
    Sleep  1s
    Switch Window  NEW
    Wait Until Page Contains  Starlink
    Close Window
    Switch Window  Starlink

Privacy Policy Address Page Available
    Press Keys  None  HOME
    Sleep  1s
    Click element  //*[contains(@href, "legal")]
    Sleep  1s
    Switch window  NEW
    Wait Until Page Contains  Starlink Legal
    Close Window
    Switch Window  Starlink

Privacy Policy Bottom Page Available
    Run Keyword And Ignore Error  Scroll Element Into View  xpath=/html/body/app-root/starlink-footer
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Press Keys  None  END
    Sleep  1s
    Click element  xpath=/html/body/app-root/starlink-footer/footer/div[1]/span[3]/a
#    //a[contains(@href, "starlink.com/legal")]
    Wait Until Page Contains  Starlink Legal
    Sleep  1s
    Go Back

Visit Spacex Info Available
    Run Keyword And Ignore Error  Scroll Element Into View  xpath=/html/body/app-root/starlink-footer
    [Documentation]  Strings above may be removed for testing on any different browsers than Chrome.
    Press Keys  None  END
    Sleep  1s
    Click element  xpath=/html/body/app-root/starlink-footer/footer/div[2]/a
#    //a[@href="https://www.spacex.com/"]
    Switch window  SpaceX
    Wait Until Page Contains Element  //*[@id="logo"]
    Close Window
    Switch Window  Starlink