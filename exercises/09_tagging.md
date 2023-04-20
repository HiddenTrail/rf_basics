# Tagging

Test case tagging is a feature in Robot Framework that allows you to assign one or more tags to a test case. Tags are user-defined labels that can be used to categorize and organize test cases.

Test case tagging is particularly useful when you have a large test suite with multiple test cases that need to be executed selectively. You can use tags to group test cases based on various criteria such as functionality, priority, or test environment.

In addition, tags can also be used to provide additional information about test cases, such as the browser or device being tested, the application version, or any other relevant information that may be helpful in understanding the purpose of the test case.

Once you have tagged your test cases, you can use the --include and --exclude command-line options to selectively execute the test cases based on their tags. This makes it easy to run only the tests that are relevant to a particular scenario or test environment.

## Exercise 9 - Tagging

1. Create a new test suite file called tagging_tests.robot.
2. Define the following variables in the *** Variables *** section of the test suite file:
    - ${BROWSER}: The name of the browser to use (e.g. Chrome, Firefox, etc.)
    - ${BASE URL}: The base URL of the search engine (e.g. https://www.google.com, https://www.bing.com, etc.)
    - ${SEARCH KEYWORD}: The keyword to search for.
    - ${EXPECTED RESULT}: The expected result to verify on the search results page.
3. Define two test cases in the *** Test Cases *** section of the test suite file that perform a search on different search engines using the Open Available Browser keyword and the Input Text keyword to input the search keyword. Use the Run Keyword And Continue On Failure keyword to ensure that the test continues even if one of the test cases fails.
4. Use tags to differentiate the test cases based on the search engine.
5. Run your test suite using the robot command-line tool or an IDE plugin.
6. Examine the test report to ensure that all test cases passed.


solution(to be moved):
```
*** Settings ***
Documentation    This is an example test suite
Library          Browser

*** Variables ***
${BROWSER}          Chrome
${GOOGLE URL}       https://www.google.com
${BING URL}         https://www.bing.com
${SEARCH KEYWORD}   robot framework
${EXPECTED RESULT}  Robot Framework

*** Test Cases ***
Search on Google
    [Tags]    google
    [Timeout]    1 minute
    [Test Setup]    Log    Starting test...
    [Test Teardown]    Log    Test completed.
    Open Available Browser    ${BROWSER}    ${GOOGLE URL}
    Input Text    name=q    ${SEARCH KEYWORD}
    Click Button    name=btnK
    Wait Until Page Contains    ${EXPECTED RESULT}
    [Teardown]    Close Browser

Search on Bing
    [Tags]    bing
    [Timeout]    1 minute
    [Test Setup]    Log    Starting test...
    [Test Teardown]    Log    Test completed.
    Open Available Browser    ${BROWSER}    ${BING URL}
    Input Text    name=q    ${SEARCH KEYWORD}
    Click Button    name=go
    Wait Until Page Contains    ${EXPECTED RESULT}
    [Teardown]    Close Browser
```

In this example, we've defined two test cases that use the Open Available Browser, Input Text, and Wait Until Page Contains keywords to perform a search on different search engines based on the `${BROWSER}` and `${BASE URL}` variables. We've used the `[Tags]` setting to differentiate the test cases based on the search engine they're using.