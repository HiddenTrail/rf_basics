*** Settings ***
Documentation   An example test suite to use in second assignment (running robot tests). You may use this suite to try different running types.

*** Variables ***
${correct_credentials}   credentials

*** Keywords ***
Login With Correct Credentials
    [Arguments]    ${correct_credentials}
    Log            ${correct_credentials}

*** Test Cases ***
Run This With Tag IncludeThisFeature
    [Tags]   IncludeThisFeature
    Log   Running this test with tag IncludeThisFeature.

Don't Run This With Tag ExcludeThisFeature
    [Tags]   ExcludeThisFeature
    Log   You should not be running this by using --exclude.