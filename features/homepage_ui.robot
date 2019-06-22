*** Settings ***
Library   Selenium2Library
Resource  ../resources/setup_resource.robot
Test Setup  Open Browser to Homepage

*** Variables ***
${Platforms}    xpath://div[contains(text(),'Platforms')]
${Solutions}  xpath://div[contains(text(),'Solutions')]

*** Test Cases ***
TC_002 Checking homepage header (Platforms) section
    [Documentation]  User hovers over "Platforms" and validates UI
    When I mouse over the Platforms header
    Then testing solution should appear
    close browser

TC_003 Checking homepage header (Solutions) section
    [Documentation]  User hovers over "Solutions" and validates UI
    When I mouse over the Solutions header
    Then right solution should appear
    close browser

*** Keywords ***
I mouse over the Platforms header
    mouse over  ${Platforms}

I mouse over the Solutions header
    mouse over  ${Solutions}



