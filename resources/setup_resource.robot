*** Settings ***

*** Variables ***
${Browser}   Chrome
${URL}  http://testdevlab.com
${tdl_logo}  css:.tdl-logo.dark
${platforms}  xpath://div[contains(text(),'Platforms')]
${solutions}  xpath://div[contains(text(),'Solutions')]
${products}  xpath://div[contains(text(),'Products')]
${Company}  xpath://div[contains(text(),'Company')]
@{Platform_List}=  xpath://div[contains(text(),'Mobile application testing')]  xpath://div[contains(text(),'Web application testing')]
${Mobile_application_testing}  xpath://div[contains(text(),'Mobile application testing')]
${Web_application_testing}  xpath://div[contains(text(),'Web application testing')]
${Desktop_application_testing}  xpath://div[contains(text(),'Desktop application testing')]
${SDK_API_application_testing}  xpath://div[contains(text(),'SDK/API testing')]
${Backend_application_testing}  xpath://div[contains(text(),'Backend testing')]
${QA_consultancy}  xpath://div[contains(text(),'Quality assurance consultancy')]
${performance_testing}  xpath://div[contains(text(),'Performance estings')]
${audio_testing}  xpath://div[contains(text(),'Audio & video quality testing')]
${Test_automation}  xpath://div[contains(text(),'Test automation')]
#${Security_testing}  xpath://div[contains(text(),'Security testing')]
#${Battery_testing}  xpath://div[contains(text(),'Battery & data usage testing')]

*** Keywords ***
Open Browser to Homepage
    open browser  ${URL}  ${Browser}
    maximize browser window
    Homepage Should be Open

Homepage Should be Open
    title should be  TestDevLab - We are experts in Software Quality Assurance
    page should contain element  ${tdl_logo}

Testing Solution Should Appear
    page should contain element  ${Mobile_application_testing}  ${Web_application_testing}
    page should contain element  ${Desktop_application_testing}  ${SDK_API_application_testing}
    page should contain element  ${Backend_application_testing}

Right Solution Should Appear
    page should contain element  ${QA_consultancy}  ${performance_testing}
    page should contain element  ${audio_testing}  ${Test_automation}



