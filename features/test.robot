*** Settings ***
Library  Selenium2Library

*** Variables ***
${Browser}   Chrome
${URL}  http://testdevlab.com

*** Test Cases ***
TC_000 Browser Start and Close with several browsers
    Open Browser  ${URL}  ${Browser}
    Maximize browser window
