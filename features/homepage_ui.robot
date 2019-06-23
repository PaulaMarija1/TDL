*** Settings ***
Library   Selenium2Library
Resource  ../resources/homepage_resource.robot
Resource  ../resources/test_setup_resource.robot
Test Setup  Open Homepage

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
TC_002 Checking homepage header (Platforms) section
    [Documentation]  User hovers over "Platforms" and validates UI
    Hover over the Platforms header
    Testing Solutions Are Visible

TC_003 Checking homepage header (Solutions) section
    [Documentation]  User hovers over "Solutions" and validates UI
    Hover over the Solutions header
    Right Solutions Are Visible

TC_004 Checking homepage header (Products) section
    [Documentation]  User hovers over "Products" and validates UI
    Hover over the Products header
    TDL Tools Are Visible

TC_005 Checking homepage header (Company) section
    [Documentation]  User hovers over "Company" and validates UI
    Hover over the Company header
    Company information is Visible

TC_006 Navigate to clients-partners-awards page from twilio
    [Documentation]  Click on twilio and navigate to page
    Click on twilio logo
    Clients-Partners Awards page opens

TC_007 Navigate to clients-partners-awards page from skype
    [Documentation]  Click on skype and navigate to page
    Click on skype logo
    Clients-Partners Awards page opens

TC_008 Navigate to clients-partners-awards page from truecaller
    [Documentation]  Click on truecaller and navigate to page
    Click on truecaller logo
    Clients-Partners Awards page opens

TC_009 Navigate to clients-partners-awards page from seb
    [Documentation]  Click on seb and navigate to page
    Click on seb logo
    Clients-Partners Awards page opens

TC_010 Navigate to clients-partners-awards page from worldremit
    [Documentation]  Click on worldremit and navigate to page
    Click on worldremit logo
    Clients-Partners Awards page opens

TC_011 Navigate to clients-partners-awards page from microsoft
    [Documentation]  Click on microsoft and navigate to page
    Click on microsoft logo
    Clients-Partners Awards page opens

TC_012 Homepage contains platform info
    [Documentation]  Under platforms section page contains information about platforms
    Page contains platform info

TC_013 Homepage contains solutions info
    [Documentation]  Under solutions section page contains information about testing solutions
    Page contains solutions info

TC_014 Homepage contains info about testing approach
    [Documentation]  Under approach section page contains information about testing approaches
    Page contains info about testing approach

TC_015 Homepage contains customer feedback
    [Documentation]  Under testimonials section page contains information about customer feedback
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
    close browser
