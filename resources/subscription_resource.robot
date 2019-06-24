*** Variables ***
${email}    name:email
${success}  class:form-field-success-msg
${error}    class:form-field-error-msg

*** Keywords ***

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

Error notification is visible
    wait until page contains element  ${error}

Subscription title visible
    page should contain  Subscription to our newsletter

Subscription text is visible
    page should contain  Sign up for our newsletter to get regular updates and insights into our solutions, technologies and latest findings in the world of quality assurance and software development.
