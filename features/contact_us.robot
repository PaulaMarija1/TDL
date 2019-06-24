*** Settings ***
Library   Selenium2Library
Resource  ../resources/test_setup_resource.robot
Resource  ../resources/contact_us_resource.robot
Resource  ../resources/test_teardown_resource.robot
Test Teardown  Exit Browser

*** Test Cases ***
TC_025
    [Documentation]  User press 'contact us' button and navigates to 'contact-us' page
    [Tags]  smoke
    Open Homepage
    Press Contact-us button
    Contact Us Page Opens

TC_026
    [Documentation]  User sees all TDL contact information
    [Tags]  regression
    Open Contact Us Page
    Phone is visible
    Email is visible
    Riga office address is visible
    Liepaja office address is visible
    Ventspils office address is visible
    Daugavpils office address is visible

TC_027
    [Documentation]  User sees all TDL payment information
    [Tags]  regression
    Open Contact Us Page
    Payment information is visible

TC_028
    [Documentation]  User can input text into the "Send us a Message" form
    [Tags]  regression
    Open Contact Us Page
    First Name Input  firstName
    Last Name Input   lastName
    Valid Email Input  email
    Valid Phone Number Input  phone
    Company Input   company
    Message Input  message
    No error messages are present

TC_029
    [Documentation]  Error notification shows up when entered invalid email/phone number
    [Tags]  regression
    Open Contact Us Page
    First Name Input  firstName
    Last Name Input   lastName
    Invalid Email Input  email
    Invalid Phone Number Input  phone
    Company Input   company
    Message Input  message
    Incorrect Phone Number Error
    Incorrect Email Error