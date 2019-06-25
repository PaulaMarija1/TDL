*** Variables ***
${Browser}   Chrome
${URL}   http://testdevlab.com
${URL_contact_us}  http://testdevlab.com/contact-us
${tdl_logo}   css:.tdl-logo.dark

*** Keywords ***

Open Homepage
    open browser  ${URL}  ${Browser}
    maximize browser window
    Homepage Should be Open

Homepage Should be Open
    title should be  TestDevLab - We are experts in Software Quality Assurance
    page should contain element  ${tdl_logo}

Open Contact Us Page
    open browser  ${URL_contact_us}  ${Browser}
    maximize browser window
    Contact Us Page Opens

Contact Us Page Opens
    title should be  TestDevLab - We are experts in Software Quality Assurance
    page should contain element  ${tdl_logo}

Open About-Us Page
    open browser  ${URL}  ${Browser}
    maximize browser window
    Aboutt-Us Should be Open

Aboutt-Us Should be Open
    title should be  TestDevLab - We are experts in Software Quality Assurance
    page should contain element  ${tdl_logo}
