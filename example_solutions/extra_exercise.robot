*** Settings ***
Documentation     This is solution for 6.3 but with some errors 
...               the final exercise is to run this on your computer and correct those errors!
...               If you still have time, you may clean-up this a bit also!
Library           Browser
Test Template     Perform Checkout With User Data

*** Variables ***
${URL}             https://www.saucedemo.com
${VALID_USERNAME}  standard_user
${VALID_PASSWORD}  secret_sauce

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
    Fill Text    css=[data-test="username"]    ${VALID_USERNAME}
    Fill Text    css=[data-test="password"]    ${VALID_PASSWORD}
    Click    css=[data-test="login-button"]

Add First Item To Cart And Checkout
    Click    text=Add to cart    >> nth=0
    Click    css=.shopping_cart_link
    Click    css=[data-test="checkout"]

Fill Checkout Information
    [Arguments]    ${FIRSTNAME}    ${LASTNAME}    ${POSTALCODE}
    Fill Text    css=[data-test="firstName"]    ${FIRSTNAME}
    Fill Text    css=[data-test="lastName"]    ${LASTNAME}
    Fill Text    css=[data-test="postalCode"]    ${POSTALCODE}
    Click    css=[data-test="continue"]

Finish Checkout And Validate
    Click    css=[data-test="finish"]
    Element Text Should Be     css=.complete-header    THANK YOU FOR YOUR ORDER

Log Out
    Click    css=.bm-burger-button
    Click    css=#logout_sidebar_link
