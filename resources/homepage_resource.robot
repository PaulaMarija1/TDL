*** Variables ***
${platforms}  xpath://div[contains(text(),'Platforms')]
${solutions}  xpath://div[contains(text(),'Solutions')]
${products}  xpath://div[contains(text(),'Products')]
${Company}  xpath://div[contains(text(),'Company')]
${Mobile_application_testing}  xpath://div[contains(text(),'Mobile application testing')]
${Web_application_testing}  xpath://div[contains(text(),'Web application testing')]
${Desktop_application_testing}  xpath://div[contains(text(),'Desktop application testing')]
${SDK_API_application_testing}  xpath://div[contains(text(),'SDK/API testing')]
${Backend_application_testing}  xpath://div[contains(text(),'Backend testing')]
${QA_consultancy}  xpath://div[contains(text(),'Quality assurance consultancy')]
${performance_testing}  xpath://div[contains(text(),'Performance estings')]
${audio_testing}  xpath://div[contains(text(),'Audio & video quality testing')]
${Test_automation}  xpath://div[contains(text(),'Test automation')]
${Appbench}  xpath://*[@id="root"]//a[1]//h5
${Loadero}  xpath://*[@id="root"]//a[2]//h5
${Apimation}  xpath://*[@id="root"]//a[3]//h5
${Test48}  xpath://*[@id="root"]//a[4]//h5
${About_us}  css:a[href*='/about-us']
${Careers}  css:a[href*='https://testdevlab.com/careers']
${h3_mobile}  xpath://div[@class='platform-intro']//h3[contains(text(), 'Mobile')]
${h3_web}  xpath://div[@class='platform-intro']//h3[contains(text(), 'Web')]
${h3_desktop}  xpath://div[@class='platform-intro']//h3[contains(text(), 'Desktop')]
${h3_sdk}  xpath://div[@class='platform-intro']//h3[contains(text(), 'SDK')]
${h3_backend}  xpath://div[@class='platform-intro']//h3[contains(text(), 'Backend')]
${h3_quality}  xpath://div[@class='solutions-intro-grid']//h3[contains(text(), 'Quality')]
${h3_performance}  xpath://div[@class='solutions-intro-grid']//h3[contains(text(), 'Performance')]
${h3_audio}  xpath://div[@class='solutions-intro-grid']//h3[contains(text(), 'Audio')]
${h3_automation}  xpath://div[@class='solutions-intro-grid']//h3[contains(text(), 'Test automation')]
${h3_security}  xpath://div[@class='solutions-intro-grid']//h3[contains(text(), 'Security')]
${h3_battery}  xpath://div[@class='solutions-intro-grid']//h3[contains(text(), 'Battery')]
${feeback_row}  css:.scrollable-feedback-row

*** Keywords ***

Testing Solutions Are Visible
    page should contain element  ${Mobile_application_testing}  ${Web_application_testing}
    page should contain element  ${Desktop_application_testing}  ${SDK_API_application_testing}
    page should contain element  ${Backend_application_testing}

Right Solutions Are Visible
    page should contain element  ${QA_consultancy}  ${performance_testing}
    page should contain element  ${audio_testing}  ${Test_automation}

TDL Tools Are Visible
    page should contain element  ${Appbench}  ${Loadero}
    page should contain element  ${Apimation}  ${test48}

Company information is Visible
    page should contain element  ${about_us}  ${Careers}

Page contains platform info
    page should contain  Our testing efforts focus on
    page should contain  Our large team of engineers are skilled and experienced in testing the broadest range of software products across all forms and platforms. From standalone software products to platforms that support hundreds of thousands of third-party developers, we've worked on them all.
    page should contain element  ${h3_mobile}  ${h3_web}
    page should contain element  ${h3_desktop}  ${h3_sdk}
    page should contain element  ${h3_sdk}  ${h3_backend}

Page contains solutions info
    page should contain  Our software testing services
    page should contain  We have over 10 years' experience in serving product teams large and small, so we are experienced in delivering a tailored solution to meet your ever changing software testing needs.
    page should contain element  ${h3_quality}  ${h3_performance}
    page should contain element  ${h3_audio}  ${h3_automation}
    page should contain element  ${h3_security}  ${h3_battery}

Page contains info about testing approach
    page should contain  Different engagement models
    page should contain  Our clients have seen shorter product release cycles, dramatic improvements in product performance, more effective resource allocation, round-the-clock product testing and brand reputation management. Our passion for quality and efficiency drives us to work flexibly to meet our clients' needs — from short-term strategy and consulting services to setup and management of testing processes, to specific testing for new product launches, top ongoing testing services and dedicated QA teams.

Page contains customer feedbacks
    page should contain  What our customers say
    page should contain element  ${feeback_row}
