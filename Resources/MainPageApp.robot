*** Settings ***
Resource  ./PO/MainPageLanding.robot

*** Variables ***


*** Keywords ***
Go to main page
    MainPageLanding.Navigate to

Verify Main page loaded
    MainPageLanding.Main Page Loaded

Verify Sattelites Info Available
    MainPageLanding.Sattelites info available
    MainPageLanding.MainPage Loaded

Verify Rural Info Available
    MainPageLanding.Rural info available
    MainPageLanding.MainPage loaded

Verify Preserving Sky Info Available
    MainPageLanding.Preserving info available
    MainPageLanding.MainPage loaded

