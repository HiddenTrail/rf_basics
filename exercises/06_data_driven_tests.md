# Data driven tests and test template

Data-driven development allows you to run the same test case with different input data, making your tests more flexible and reusable. Test templates allow you to define the common test steps in a separate keyword, making your test cases easier to read and maintain.

## Exercise 6 - Data driven tests and test template

In this exercise, you will create a test suite that performs a search for a given keyword on a search engine, and verifies that the search results page contains at least one expected result. You will use data-driven development to run the same test case with different search keywords and expected results, and you will use a test template to define the common test steps.

1. Create a new test suite file called data_driven_tests.robot.
2. Define the following variables in the *** Variables *** section of the test suite file:
    - ${BROWSER}: The name of the browser to use (e.g. Chrome, Firefox, etc.)
    - ${BASE URL}: The base URL of the search engine (e.g. https://www.google.com, https://www.bing.com, etc.)
    - ${SEARCH KEYWORDS}: A list of search keywords to test (e.g. [robot framework, test automation, software testing])
    - ${EXPECTED RESULTS}: A list of expected search results to test (e.g. ["Robot Framework", "Test Automation - Wikipedia", "Software testing - Wikipedia"])
3. Define a test template in the *** Keywords *** section of the test suite file that performs the following steps:
    - Open the specified browser and go to the specified search engine.
    - Input the search keyword.
    - Click the search button.
    - Verify that the search results page contains the expected result.
    - Close the browser.
4. Define a test case that uses the test template to run the test with different search keywords and expected results. Use the Run Keyword And Continue On Failure keyword to ensure that the test continues even if one of the test cases fails.
5. Run your test suite using the robot command-line tool or an IDE plugin.
6. Examine the test report to ensure that all test cases passed.

TO-DO: Put the solutions to their own directory and files.
solution: 

```
*** Settings ***
Documentation    This is an example test suite
Library          Browser

*** Variables ***
${BROWSER}           Chrome
${BASE URL}          https://www.google.com
@{SEARCH KEYWORDS}   robot framework  test automation  software testing
@{EXPECTED RESULTS}  Robot Framework  Test Automation - Wikipedia  Software testing - Wikipedia

*** Keywords ***
Search for keyword
    [Arguments]    ${keyword}    ${expected_result}
    Open Available Browser    ${BROWSER}
    Go To    ${BASE URL}
    Input Text    name=q    ${keyword}
    Click Button    name=btnK
    Wait Until Page Contains    ${expected_result}
    Close Browser

*** Test Cases ***
Verify search results
    [Template]    Search for keyword
    [Tags]    smoke-test
    [Timeout]    1 minute
    [Test Setup]    Log    Starting test...
    [Test Teardown]    Log    Test completed.
    [Test Template]    ${SEARCH KEYWORDS}    ${EXPECTED RESULTS}

```

In this example, we've defined the variables ${BROWSER}, ${BASE URL}, ${SEARCH KEYWORDS}, and ${EXPECTED RESULTS} in the *** Variables *** section of the test suite file. We've then defined a test template called Search for keyword in the *** Keywords *** section that performs the common test steps. Finally, we've defined a test case called Verify search results that uses the test template to run the test with different search keywords and expected results.