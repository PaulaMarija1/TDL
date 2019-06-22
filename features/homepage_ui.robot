*** Settings ***
Library  Selenium2Library
Resource  ../resources/setup_resource.robot

*** Variables ***


*** Test Cases ***
TC_001 Browser Start and Close
    Start Browser and Maximize
    close browser
