*** Settings ***
Documentation     Data-driven login attempts on saucedemo.com.
Library           Browser
Resource          05_resource_file.robot
Test Template     Attempt To Login With Invalid Credentials

*** Variables ***
${URL}            https://www.saucedemo.com
${ERROR_MESSAGE}  Epic sadface: Username and password do not match any user in this service

*** Test Cases ***                USERNAME       PASSWORD
Invalid Login Attempt 1           test_user_1    BadPass1!
Invalid Login Attempt 2           test_user_2    BadPass2!

*** Keywords ***
Open The Saucedemo Website
    New Browser    chromium    headless=false
    New Context
    New Page    ${URL}

Attempt To Login With Invalid Credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Open The SauceDemo Website
    Fill Text    id=${USER_NAME_ID}    ${USERNAME}
    Fill Text    id=${PSW_NAME_ID}     ${PASSWORD}
    Click        id=${LOGIN_ID}
    Wait For Elements State    id=${LOGIN_ID}