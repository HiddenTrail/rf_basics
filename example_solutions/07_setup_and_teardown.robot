*** Settings ***
Library         Browser
Suite Setup     Open Login Homepage
Suite Teardown  Close Browser

*** Keywords ***
Open Login Homepage
    New Browser    chromium    headless=False
    New Page    https://www.saucedemo.com/

Input Credentials And Login
    Type Text    id=user-name    standard_user
    Type Text    id=password     secret_sauce
    Click        id=login-button

*** Test Cases ***
Login To saucedemo.com
    Input Credentials And Login