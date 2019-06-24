*** Settings ***
Library   Selenium2Library
Resource  ../resources/subscription_resource.robot
Resource  ../resources/test_setup_resource.robot
Resource  ../resources/test_teardown_resource.robot
Test Setup  Open Homepage
Test Teardown  Exit Browser

*** Variables ***
${submit_button}  class:subscribe-btn-large

*** Test Cases ***

TC_016
    [Documentation]  Check subscription UI
    [Tags]  smoke
    Subscription title visible
    Subscription text is visible

TC_017
    [Documentation]  User subscribes with a valid email
    [Tags]  smoke
    Input valid email   email
    Click Subscribe
    Success notification is visible

TC_018
    [Documentation]  User can't subscribe with an invalid email
    [Tags]  smoke
    Input invalid email     email
    Click Subscribe
    Error notification is visible

TC_019
    [Documentation]  User can't subscribe with an empty email
    [Tags]  smoke
    Input empty email   email
    Click Subscribe
    Error notification is visible

*** Keywords ***
Click subscribe
    click button   ${submit_button}
