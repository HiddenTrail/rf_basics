*** Settings ***
Documentation   Here you can add your suite documentation. For example to explain the suites purpose.

*** Variables ***
${correct_credentials}   credentials

*** Keywords ***
Login With Correct Credentials
    [Arguments]    ${correct_credentials}
    Log            ${correct_credentials}

*** Test Cases ***
Login Should Work Correctly
    Login With Correct Credentials   ${correct_credentials}