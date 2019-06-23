*** Variables ***
${Browser}   Chrome
${URL}   http://testdevlab.com
${tdl_logo}   css:.tdl-logo.dark
${email}    name:email
${success}  class:form-field-success-msg
${error}    class:form-field-error-msg

*** Keywords ***
Open Homepage
    open browser  ${URL}  ${Browser}
    maximize browser window
    Page has opened

Page has opened
    title should be  TestDevLab - We are experts in Software Quality Assurance
    page should contain element  ${tdl_logo}

Input valid email
    [Arguments]    ${email}
    Input Text     ${email}  this_is_a_test@gmail.com

Input invalid email
    [Arguments]    ${email}
    Input Text    ${email}  12345

Input empty email
    [Arguments]    ${email}
    Input Text    ${email}   ${empty}

Success notification is visible
    wait until page contains element  ${success}
    close browser

Error notification is visible
    wait until page contains element  ${error}
    close browser

Subscription title visible
    page should contain  Subscription to our newsletter

Subscription text is visible
    page should contain  Sign up for our newsletter to get regular updates and insights into our solutions, technologies and latest findings in the world of quality assurance and software development.
    close browser
