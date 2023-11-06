*** Settings ***
Documentation     Data-driven checkout flow on saucedemo.com.
Library           Browser
Resource          05_resource_file.robot
Test Template     Perform Checkout With User Data

*** Test Cases ***                   FIRSTNAME    LASTNAME    POSTALCODE
Checkout User 1                      John         Doe         12345
Checkout User 2                      Jane         Smith       67890

*** Keywords ***
Perform Checkout With User Data
    [Arguments]    ${FIRSTNAME}    ${LASTNAME}    ${POSTALCODE}
    Open The SauceDemo Website
    Log In With Valid Credentials
    Add First Item To Cart And Checkout
    Fill Checkout Information    ${FIRSTNAME}    ${LASTNAME}    ${POSTALCODE}
    Finish Checkout And Validate
    Log Out
    Close Page

Open The SauceDemo Website
    New Browser    chromium    headless=false
    New Context
    New Page    ${URL}

Log In With Valid Credentials
    Fill Text    id=${USER_NAME_ID}    ${USERNAME}
    Fill Text    id=${PSW_NAME_ID}     ${PSW}
    Click        id=${LOGIN_ID}
    Wait For Elements State    id=${LOGIN_ID}

Add First Item To Cart And Checkout
    Click    id=add-to-cart-sauce-labs-backpack
    Click    css=.shopping_cart_link
    Click    css=[data-test="checkout"]

Fill Checkout Information
    [Arguments]    ${FIRSTNAME}    ${LASTNAME}    ${POSTALCODE}
    Fill Text    css=[data-test="firstName"]    ${FIRSTNAME}
    Fill Text    css=[data-test="lastName"]    ${LASTNAME}
    Fill Text    css=[data-test="postalCode"]    ${POSTALCODE}
    Click        css=[data-test="continue"]

Finish Checkout And Validate
    Click      css=[data-test="finish"]
    Get Text    id=checkout_complete_container  contains   Thank you for your order!

Log Out
    Click    css=.bm-burger-button
    Click    css=#logout_sidebar_link
