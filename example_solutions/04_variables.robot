*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://www.google.com
${QUERY}    Robot Framework
${TIMEOUT}    5
${COOKIE_BUTTON_ID}    L2AGLb
&{SELECTORS}    search_box=css:[name="q"]    search_button=css:center:nth-child(1) > .gNO89b    search_results=css:#search

*** Keywords ***
Open Google Homepage
    New Browser    chromium    headless=False
    New Page    ${URL}

Input Search Query
    Type Text    ${SELECTORS.search_box}    ${QUERY}
    Click    css=body
    Wait For Elements State    ${SELECTORS.search_button}    timeout=${TIMEOUT}

Submit Search Query
    Click    ${SELECTORS.search_button}

Verify Search Results
    Wait For Elements State    ${SELECTORS.search_results}    timeout=${TIMEOUT}

Accept All Cookies
    Click    id=${COOKIE_BUTTON_ID}

*** Test Cases ***
Google Search
    Open Google Homepage
    Accept All Cookies
    Input Search Query
    Submit Search Query
    Verify Search Results
