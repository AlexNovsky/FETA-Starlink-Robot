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

Verify Clear Space Info Available
    MainPageLanding.Keeping Clear Info Available
    MainPageLanding.MainPage loaded

Verify By Spacex Info Available
    MainPageLanding.By Spacex Info Available
    MainPageLanding.MainPage loaded

Verify Open Positions Page Available
    MainPageLanding.Open Positions Page Available
    MainPageLanding.MainPage loaded

Verify Starlink Kit Page Available
    MainPageLanding.Kit Page Available
    MainPageLanding.MainPage loaded

Verify Clear View Page Available
    MainPageLanding.Clear View Page Available
    MainPageLanding.MainPage loaded

Verify Apps Available For Downloading
    MainPageLanding.AndroidApp Download
    MainPageLanding.MainPage loaded
    MainPageLanding.IOSApp Download