*** Settings ***
Resource    05_resource_file.robot

*** Test Cases ***
Google Search
    Open Google Homepage
    Accept All Cookies
    Input Search Query
    Submit Search Query
    Verify Search Results
