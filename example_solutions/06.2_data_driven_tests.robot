*** Settings ***
Documentation     Data-driven login attempts on saucedemo.com.
Library           Browser
Resource          05_resource_file.robot

*** Variables ***
${URL}            https://www.saucedemo.com
${ERROR_MESSAGE}  Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
Invalid Login Attempt 1           
    [Template]  Attempt To Login With Invalid Credentials   
    test_user_1    BadPass1!
Invalid Login Attempt 2    
    [Template]  Attempt To Login With Invalid Credentials        
    test_user_2    BadPass2!

Login To saucedemo.com
    Open Login Homepage
    Input Credentials And Login

*** Keywords ***
Open Login Homepage
    New Browser    chromium    headless=False
    New Page       https://www.saucedemo.com/

Input Credentials And Login
    Type Text    id=${USER_NAME_ID}   ${USER_NAME}
    Type Text    id=${PSW_NAME_ID}    ${PSW}
    Click        id=${LOGIN_ID}
    Wait For Elements State    id=header_container

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