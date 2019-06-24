*** Settings ***
Library   Selenium2Library
Resource  ../resources/homepage_resource.robot
Resource  ../resources/test_setup_resource.robot
Resource  ../resources/test_teardown_resource.robot
Test Setup  Open Homepage
Test Teardown  Exit Browser


*** Variables ***
${Platforms}    xpath://div[contains(text(),'Platforms')]
${Solutions}  xpath://div[contains(text(),'Solutions')]
${Products}  xpath://div[contains(text(),'Products')]
${Company}  xpath://div[contains(text(),'Company')]
${twilio}  xpath://a[@class="logo twilio"]
${seb}  xpath://a[@class="logo seb"]
${worldremit}  xpath://a[@class="logo worldremit"]
${skype}  xpath://a[@class="logo skype"]
${microsoft}  xpath://a[@class="logo microsoft"]
${truecaller}  xpath://a[@class="logo truecaller"]

*** Test Cases ***
TC_002
    [Documentation]  User hovers over "Platforms" and validates UI
    [Tags]  smoke
    Hover over the Platforms header
    Testing Solutions Are Visible

TC_003
    [Documentation]  User hovers over "Solutions" and validates UI
    [Tags]  smoke
    Hover over the Solutions header
    Right Solutions Are Visible

TC_004
    [Documentation]  User hovers over "Products" and validates UI
    [Tags]  smoke
    Hover over the Products header
    TDL Tools Are Visible

TC_005
    [Documentation]  User hovers over "Company" and validates UI
    [Tags]  smoke
    Hover over the Company header
    Company information is Visible

TC_006
    [Documentation]  Click on twilio and navigate to page
    [Tags]  regression
    Click on twilio logo
    Clients-Partners Awards page opens

TC_007
    [Documentation]  Click on skype and navigate to page
    [Tags]  regression
    Click on skype logo
    Clients-Partners Awards page opens

TC_008
    [Documentation]  Click on truecaller and navigate to page
    [Tags]  regression
    Click on truecaller logo
    Clients-Partners Awards page opens

TC_009
    [Documentation]  Click on seb and navigate to page
    [Tags]  regression
    Click on seb logo
    Clients-Partners Awards page opens

TC_010
    [Documentation]  Click on worldremit and navigate to page
    [Tags]  regression
    Click on worldremit logo
    Clients-Partners Awards page opens

TC_011
    [Documentation]  Click on microsoft and navigate to page
    [Tags]  regression
    Click on microsoft logo
    Clients-Partners Awards page opens

TC_012
    [Documentation]  Under platforms section page contains information about platforms
    [Tags]  smoke
    Page contains platform info

TC_013
    [Documentation]  Under solutions section page contains information about testing solutions
    [Tags]  smoke
    Page contains solutions info

TC_014
    [Documentation]  Under approach section page contains information about testing approaches
    [Tags]  smoke
    Page contains info about testing approach

TC_015
    [Documentation]  Under testimonials section page contains information about customer feedback
    [Tags]  smoke
     Page contains customer feedbacks

*** Keywords ***
Hover over the Platforms header
    mouse over  ${Platforms}

Hover over the Solutions header
    mouse over  ${Solutions}

Hover over the Products header
    mouse over  ${Products}

Hover over the Company header
    mouse over  ${Company}

Click on twilio logo
    click element  ${twilio}

Click on skype logo
    click element  ${skype}

Click on truecaller logo
    click element  ${truecaller}

Click on seb logo
    click element  ${seb}

Click on worldremit logo
    click element  ${worldremit}

Click on microsoft logo
    click element  ${microsoft}

Clients-Partners Awards page opens
    location should be  https://www.testdevlab.com/clients-partners-awards
    title should be  Clients, Partners & Awards - TestDevLab
