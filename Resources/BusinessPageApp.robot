*** Settings ***
Resource  ./PO/BusinessPageLanding.robot

*** Variables ***


*** Keywords ***
Go to main page
    BusinessPageLanding.Navigate to

Verify Main page loaded
    BusinessPageLanding.Main Page Loaded

Verify Business page loaded
    BusinessPageLanding.Business page loaded

Verify Page contains address textfield
    BusinessPageLanding.Page Contains address texfield

Verify Page contains Business page verbiage
    BusinessPageLanding.Page Contains Business Verbiage

Verify Page contains Apps links
    BusinessPageLanding.Page Contains Apps Links

Verify Page contains hyperlinks
    BusinessPageLanding.Page Contains Hyperlinks