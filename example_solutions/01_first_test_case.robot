*** Settings ***
Documentation   An example solution for the first assignment. 
...             The assignment is okay by only logging the phrase straight from the test case without any variables or keywords.

*** Variables ***
${correct_credentials}   credentials

*** Keywords ***
Login With Correct Credentials
    [Arguments]    ${correct_credentials}
    Log            ${correct_credentials}

*** Test Cases ***
Login Should Work Correctly
    Login With Correct Credentials   ${correct_credentials}