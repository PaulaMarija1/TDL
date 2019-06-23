*** Settings ***
Library   Selenium2Library
Resource  ../resources/social_media_icons_resource.robot
Resource  ../resources/test_setup_resource.robot
Test Setup  Open Homepage

*** Test Cases ***

TC_020 Facebook social icon
    [Documentation]  Verify that facebook page opens when clicking on facebook social media icon
    Click on facebook icon
    TestDevLab facebook page opens

TC_021 Twitter social icon
    [Documentation]  Verify that twitter page opens when clicking on twitter social media icon
    Click on twitter icon
    TestDevLab twitter page opens

TC_022 Instagram social icon
    [Documentation]  Verify that instagram page opens when clicking on instagram social media icon
    Click on instagram icon
    TestDevLab instagram page opens

TC_023 Linkedin social icon
# This test case is supposed to fail
    [Documentation]  Verify that linkedin page opens when clicking on linkedin social media icon
    Click on linkedin icon
    TestDevLab linkedin page opens

TC_024 Youtube social icon
    [Documentation]  Verify that y page youtube pens when clicking on youtube social media icon
    Click on youtube icon
    TestDevLab youtube page opens
