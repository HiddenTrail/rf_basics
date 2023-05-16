*** Settings ***
Library    Browser

*** Keywords ***
Open Google Homepage
    New Browser    chromium    headless=False
    New Page    https://www.google.com

Input Search Query
    Type Text    css=[name="q"]    Robot Framework
    Click    css=body
    Wait For Elements State    css=center:nth-child(1) > .gNO89b

Submit Search Query
    Click    css=center:nth-child(1) > .gNO89b
Verify Search Results
    Wait For Elements State    css=#search

Accept All Cookies
    Click    id=L2AGLb

*** Test Cases ***
Google Search
    Open Google Homepage
    Accept All Cookies
    Input Search Query
    Submit Search Query
    Verify Search Results
