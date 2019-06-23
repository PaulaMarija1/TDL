*** Variables ***
${Browser}   Chrome
${URL}   http://testdevlab.com
${tdl_logo}   css:.tdl-logo.dark


*** Keywords ***
Open Homepage
    open browser  ${URL}  ${Browser}
    maximize browser window
    Homepage Should be Open

Homepage Should be Open
    title should be  TestDevLab - We are experts in Software Quality Assurance
    page should contain element  ${tdl_logo}