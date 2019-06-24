*** Variables ***
${URL}  https://www.testdevlab.com/contact-us
${Browser}  Chrome
${tdl_logo}   css:.tdl-logo.dark
${contact_us_btn}   xpath://div[@class='right-side']//span
${contact_info}  class:info-side
${send_us_message_box}  class:contact-form
${contact_information_title}  xpath://h3[contains(text(),'Contact Information')]
${email}  xpath://div[contains(text(),'info@testdevlab.com')]
${phone}  xpath://div[contains(text(),'+371 25423562')]
${riga_office}  xpath://div[contains(text(),'Kr. Valdemāra street 8, Rīga, LV-1010, Latvia')]
${ventspils_office}  xpath://div[contains(text(),'Kuldīgas street 17, Ventspils, LV-3601, Latvia')]
${liepaja_office}  xpath://div[contains(text(),'Fr. Brīvzemnieka street 7, Liepāja, LV-3401, Latvia')]
${daugavpils_office}  xpath://div[contains(text(),'Mihoelsa street 66-10, Daugavpils, LV-5401, Latvia')]
${payment_info}  xpath://div[contains(text(),'Payment information')]
${first_name_input}  name:firstName
${last_name_input}  name:lastName
${email_input}  name:email
${phone_input}  name:phone
${company_input}  name:company
${message_input}  name:message
${topic}  class:drop-down
${error_email}  xpath://div[contains(text(),'Please provide a valid email address')]
${error_phone}  xpath://div[contains(text(),'Please provide a valid phone number')]
${send_button}  class:submit-button

*** Keywords ***

Press Contact-us button
    click element  ${contact_us_btn}

Title is visible
    page should contain  ${contact_information_title}

Phone is visible
    page should contain element  ${phone}
    Get text  ${phone}
    element text should be  xpath://div[contains(text(),'+371 25423562')]  +371 25423562

Email is visible
    page should contain element  ${email}
    Get text  ${email}
    element text should be  xpath://div[contains(text(),'info@testdevlab.com')]  info@testdevlab.com

Liepaja office address is visible
    page should contain element  ${liepaja_office}
    get text  ${liepaja_office}
    element text should be   xpath://div[contains(text(),'Fr. Brīvzemnieka street 7, Liepāja, LV-3401, Latvia')]  Fr. Brīvzemnieka street 7, Liepāja, LV-3401, Latvia

Riga office address is visible
    page should contain element  ${riga_office}
    get text  ${riga_office}
    element text should be  xpath://div[contains(text(),'Kr. Valdemāra street 8, Rīga, LV-1010, Latvia')]  Kr. Valdemāra street 8, Rīga, LV-1010, Latvia

Ventspils office address is visible
    page should contain element  ${ventspils_office}
    get text  ${ventspils_office}
    element text should be  xpath://div[contains(text(),'Kuldīgas street 17, Ventspils, LV-3601, Latvia')]  Kuldīgas street 17, Ventspils, LV-3601, Latvia

Daugavpils office address is visible
    page should contain element  ${daugavpils_office}
    get text  ${daugavpils_office}
    element text should be  xpath://div[contains(text(),'Mihoelsa street 66-10, Daugavpils, LV-5401, Latvia')]  Mihoelsa street 66-10, Daugavpils, LV-5401, Latvia

Payment information is visible
    page should contain element  ${payment_info}
    get text  ${payment_info}
    element text should be  xpath://div[contains(text(),'Payment information')]  PAYMENT INFORMATION
    close browser

First Name Input
    [Arguments]    ${first_name_input}
    Input Text     ${first_name_input}  Paula Marija

Last Name Input
    [Arguments]    ${last_name_input}
    Input Text     ${last_name_input}   Drande

Valid Email Input
    [Arguments]    ${email_input}
    Input Text     ${email_input}   paula@gmail.com

Invalid Phone Number Input
    [Arguments]    ${phone_input}
    Input Text     ${phone_input}   000

Invalid Email Input
    [Arguments]    ${email_input}
    Input Text     ${email_input}   000

Valid Phone Number Input
    [Arguments]    ${phone_input}
    Input Text     ${phone_input}   +371 25359185

Company Input
    [Arguments]    ${company_input}
    Input Text     ${company_input}   SIA TestDevLab

Message Input
    [Arguments]    ${message_input}
    Input Text     ${message_input}   This is an automated test for a study project

No error messages are present
    page should not contain element  ${error_email}  ${error_phone}

Incorrect Phone Number Error
    page should contain element  ${error_phone}

Incorrect Email Error
    page should contain element  ${error_email}

