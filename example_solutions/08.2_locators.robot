*** Settings ***
Library         Browser
Suite Setup     Open The Test Page
Suite Teardown  Close Browser

*** Keywords ***
Open The Test Page
    New Browser    chromium    headless=False
    New Page       https://www.saucedemo.com/
    Login To The Website

Login To The Website
    Type Text    id=user-name    standard_user
    Type Text    id=password     secret_sauce
    Click        id=login-button
    Wait For Elements State    css=.inventory_list

*** Test Cases ***
Check Sauce Labs Backpack Price
    ${price}=    Get Text    xpath=//*[@id="inventory_container"]/div/div[1]/div[2]/div[2]/div
    Should Be Equal As Strings    ${price}    $29.99

Check That Backpack exists with XPath
    Wait For Elements State    xpath=//div[contains(text(), 'Sauce Labs Backpack')]

Check That Backpack exists with CSS
    Wait For Elements State    css=#item_4_title_link

Check That Backpack exists with id
    Wait For Elements State    id=item_4_title_link
