*** Settings ***
Resource  ./PO/RvPageLanding.robot

*** Variables ***


*** Keywords ***
Go to main page
    RvPageLanding.Navigate to

Verify Main page loaded
    RvPageLanding.Main Page Loaded

Verify RV page loaded
    RvPageLanding.RV page loaded

Verify Active Coverage Link Accessible
    RvPageLanding.Active Coverage link accessible

Verify Page contains address textfield
    RvPageLanding.Page Contains address texfield

Verify Page contains RV page verbiage
    RvPageLanding.Page Contains RV Verbiage

Verify Page contains Apps links
    RvPageLanding.Page Contains Apps Links

Verify Page contains hyperlinks
    RvPageLanding.Page Contains Hyperlinks