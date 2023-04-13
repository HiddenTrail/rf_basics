# Resource files

In Robot Framework, a resource file is a text file that contains user-defined keywords and reusable settings that can be imported and used in other test cases or resource files.

Resource files are typically used to define common functionality or to encapsulate a specific area of functionality within an application. For example, a resource file could contain a set of keywords for interacting with a particular website, or for performing a specific set of calculations.

Resource files can be imported into test cases or other resource files using the Resource or Variables settings. Once imported, the keywords and settings defined in the resource file can be used just like any other keyword or setting in the test case or resource file.

Using resource files can help to reduce duplication and make test cases more modular and maintainable. It also allows for easier reuse of code across multiple test cases or projects.

## Exercise 5 - Resource files

Your task is to move the common test steps into a resource file so that they can be reused in multiple test suites.

To accomplish this, you'll need to create a new resource file that contains the common test steps, and then import that resource file into your test suite. Here are the steps:

1. Create a new file called common_tests.robot.
2. Copy the common test steps (i.e., everything after Go To) from the test case in the test suite to the new file.
3. Replace all hardcoded values with variables. For example, replace testuser with ${username}.
4. Add a *** Keywords *** section to the new file, and define a new keyword that encapsulates the common test steps. For example, you might call the keyword Login With Credentials.
5. Update the test case in the test suite to use the new keyword instead of the common test steps.
6. Import the new resource file into the test suite using the Resource setting.

TO-DO: Put the solutions to their own directory and files.
Here's an example of what the final test suite and resource file might look like:

example_tests.robot:

```
*** Settings ***
Documentation    This is an example test suite
Library          Browser
Resource         common_tests.robot

*** Variables ***
${BROWSER}        Chrome
${BASE URL}       https://www.example.com

*** Test Cases ***
Verify login functionality
    [Tags]    smoke-test
    Open Available Browser    ${BROWSER}
    Go To    ${BASE URL}
    Login With Credentials    testuser    testpassword
    Close Browser

```

common_tests.robot:

```
*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    name=username    ${username}
    Input Password    name=password    ${password}
    Click Button    name=submit
    Wait Until Element Is Visible    css=.welcome-message
    Page Should Contain    Welcome to the Example Website
```