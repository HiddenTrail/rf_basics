*** Settings ***
Library         Browser
Suite Setup     Open Login Homepage
Suite Teardown  Close Browser
Test Tags       All

*** Keywords ***
Open Login Homepage
    New Browser    chromium    headless=False
    New Page       https://www.saucedemo.com/
    Input Credentials And Login

Input Credentials And Login
    Type Text    id=user-name    standard_user
    Type Text    id=password     secret_sauce
    Click        id=login-button

*** Test Cases ***
Check That Backpack exists with XPath
    [Tags]    xpath
    Wait For Elements State    xpath=//div[contains(text(), 'Sauce Labs Backpack')]

Check That Backpack exists with CSS
    [Tags]    css
    Wait For Elements State    css=#item_4_title_link

Check That Backpack exists with id
    [Tags]    id
    Wait For Elements State    id=item_4_title_link