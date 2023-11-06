*** Settings ***
Library    Browser

*** Variables ***
${URL}            https://www.saucedemo.com/
${USER_NAME_ID}   user-name
${PSW_NAME_ID}    password
${LOGIN_ID}       login-button
${user_name}      standard_user
${PSW}            secret_sauce

*** Keywords ***
Open Login Homepage
    New Browser    chromium    headless=False
    New Page       https://www.saucedemo.com/

Input Credentials And Login
    Type Text    id=${USER_NAME_ID}   ${USER_NAME}
    Type Text    id=${PSW_NAME_ID}    ${PSW}
    Click        id=${LOGIN_ID}
    Wait For Elements State    id=header_container

*** Test Cases ***
Login To saucedemo.com
    Open Login Homepage
    Input Credentials And Login
