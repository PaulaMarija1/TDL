*** Settings ***
Library  Selenium2Library

*** Variables ***
${Browser}   Chrome
${URL}  http://testdevlab.com

*** Keywords ***
Start Browser and Maximize
    open browser  ${URL}  ${Browser}
    maximize browser window
