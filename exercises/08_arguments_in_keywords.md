# Arguments in keywords

In the context of test automation, arguments are useful for running the same test case with different input data, or for sharing values between different keywords. By using arguments in keywords, you can make your test cases more efficient and maintainable, and reduce the amount of duplicated code.

In this exercise, you will create a test suite that performs a search for a given keyword on a search engine, and verifies that the search results page contains at least one expected result. You will define a custom keyword that takes the search keyword and expected result as arguments, and uses variables to store the browser type and search engine URL. You will then use this custom keyword in your test case to make it more flexible and reusable.

## Exercise 8 - Arguments in keywords

In this exercise, you will create a test suite that performs a search for a given keyword on a search engine, and verifies that the search results page contains at least one expected result. You will define a custom keyword with a dynamic name that includes the search keyword, and use a variable to store the expected result. You will then use this custom keyword in your test case to make it more flexible and reusable.

1. Create a new test suite file called keyword_name_tests.robot.
2. Define the following variables in the *** Variables *** section of the test suite file:
    - ${BROWSER}: The name of the browser to use (e.g. Chrome, Firefox, etc.)
    - ${BASE URL}: The base URL of the search engine (e.g. https://www.google.com, https://www.bing.com, etc.)
3. Define a custom keyword in the *** Keywords *** section of the test suite file that performs the following steps:
    - Open the specified browser and go to the specified search engine.
    - Input the search keyword.
    - Click the search button.
    - Verify that the search results page contains the expected result.
    - Close the browser.
4. Define a test case that uses the custom keyword to perform a search with different search keywords and expected results. Use the Run Keyword And Continue On Failure keyword to ensure that the test continues even if one of the test cases fails.
5. Run your test suite using the robot command-line tool or an IDE plugin.
6. Examine the test report to ensure that all test cases passed.


solution (todo to put to own dir):
```
*** Settings ***
Documentation    This is an example test suite
Library          Browser

*** Variables ***
${BROWSER}     Chrome
${BASE URL}    https://www.google.com
${EXPECTED RESULT}    Robot Framework

*** Keywords ***
Search for keyword ${keyword}
    [Arguments]    ${expected_result}
    Open Available Browser    ${BROWSER}
    Go To    ${BASE URL}
    Input Text    name=q    ${keyword}
    Click Button    name=btnK
    Wait Until Page Contains    ${expected_result}
    Close Browser

*** Test Cases ***
Verify search results
    [Tags]    smoke-test
    [Timeout]    1 minute
    [Test Setup]    Log    Starting test...
    [Test Teardown]    Log    Test completed.
    Search for keyword    robot framework    ${EXPECTED RESULT}
    Search for keyword    test automation    ${EXPECTED RESULT}
    Search for keyword    software testing    ${EXPECTED RESULT}
    Run Keyword And Continue On Failure    Search for keyword    invalid search    No results found
```
In this example, we've defined the variables ${BROWSER}, ${BASE URL}, and ${EXPECTED RESULT} in the *** Variables *** section of the test suite file. We've then defined a custom keyword called Search for keyword ${keyword} in the *** Keywords *** section that includes the search keyword in its name, and takes one argument: the expected result.

Finally, we've defined a test case called Verify search results that uses the custom keyword to perform a search with different search keywords and expected results. We've also used the Run Keyword And Continue On Failure keyword to ensure that the test continues even if one of the test cases fails.
