*** Settings ***
Resource  ./PO/MainPageLanding.robot

*** Variables ***


*** Keywords ***
Go to main page
    MainPageLanding.Navigate to

Verify page loaded
    MainPageLanding.Verify page loaded