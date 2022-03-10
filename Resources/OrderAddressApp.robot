*** Settings ***
Resource  ./PO/OrderAddressLanding.robot

*** Variables ***


*** Keywords ***
Go to main page
    OrderAddressLanding.Navigate to
#
Verify Main page loaded
    OrderAddressLanding.Main Page Loaded

Verify Valid Address Submitted
    OrderAddressLanding.Valid Address Submitted

Verify Order Page Loaded
    OrderAddressLanding.Order Page Loaded

Verify Invalid Address Show Error
    OrderAddressLanding.Invalid Address Show Error
