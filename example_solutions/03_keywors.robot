*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://www.google.com
${QUERY}    Robot Framework

*** Keywords ***
Open Google Homepage
    New Page    ${URL}

Input Search Query
    Input Text    name=q    ${QUERY}

Submit Search Query
    Submit Form

Verify Search Results
    ${title}=    Get Title
    Should Start With    ${title}    ${QUERY}

*** Test Cases ***
Google Search
    Open Google Homepage
    Input Search Query
    Submit Search Query
    Verify Search Results
