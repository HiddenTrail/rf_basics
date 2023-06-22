*** Settings ***
Documentation   An example solution for the second assignment.
Library    Browser

*** Keywords ***
Open Login Homepage
    New Browser    chromium    headless=False
    New Page    https://www.saucedemo.com/

Input Credentials And Login
    Type Text    id=user-name    standard_user
    Type Text    id=password     secret_sauce
    Click        id=login-button

*** Test Cases ***
Google Search
    Open Login Homepage
    Input Credentials And Login
