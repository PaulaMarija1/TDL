*** Settings ***
Library   Selenium2Library
Resource  ../resources/subscription_resource.robot
Test Setup  Open Homepage

*** Variables ***
${submit_button}  class:subscribe-btn-large

*** Test Cases ***

TC_013 Subscription UI
    [Documentation]  Check subscription UI
    Subscription title visible
    Subscription text is visible

TC_014 Subscription with valid e-mail
    [Documentation]  User subscribes with a valid email
    Input valid email   email
    Click Subscribe
    Success notification is visible

TC_015 Subscription with invalid e-mail
    [Documentation]  User can't subscribe with an invalid email
    Input invalid email     email
    Click Subscribe
    Error notification is visible

TC_016 Subscription with empty e-mail
    [Documentation]  User can't subscribe with an empty email
    Input empty email   email
    Click Subscribe
    Error notification is visible

*** Keywords ***
Click subscribe
    click button   ${submit_button}
