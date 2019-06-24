*** Settings ***
Library   Selenium2Library
Resource  ../resources/social_media_icons_resource.robot
Resource  ../resources/test_setup_resource.robot
Resource  ../resources/test_teardown_resource.robot
Test Setup  Open Homepage
Test Teardown  Exit Browser

*** Test Cases ***

TC_020
    [Documentation]  Verify that facebook page opens when clicking on facebook social media icon
    [Tags]  regression
    Click on facebook icon
    TestDevLab facebook page opens

TC_021
    [Documentation]  Verify that twitter page opens when clicking on twitter social media icon
    [Tags]  regression
    Click on twitter icon
    TestDevLab twitter page opens

TC_022
    [Documentation]  Verify that instagram page opens when clicking on instagram social media icon
    [Tags]  regression
    Click on instagram icon
    TestDevLab instagram page opens

TC_023
# This test case is supposed to fail
    [Documentation]  Verify that linkedin page opens when clicking on linkedin social media icon
    [Tags]  regression
    Click on linkedin icon
    TestDevLab linkedin page opens

TC_024
    [Documentation]  Verify that y page youtube pens when clicking on youtube social media icon
    [Tags]  regression
    Click on youtube icon
    TestDevLab youtube page opens
