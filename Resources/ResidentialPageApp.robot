*** Settings ***
Resource  ./PO/ResidentialPageLanding.robot

*** Variables ***


*** Keywords ***
Go to main page
    ResidentialPageLanding.Navigate to

Verify Main page loaded
    ResidentialPageLanding.Main Page Loaded

Verify Residential page loaded
    ResidentialPageLanding.Residential page loaded