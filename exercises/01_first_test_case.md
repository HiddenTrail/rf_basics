# First test case

Congratulations! Now you have your setup ready and we can start our first test case.
[Robot Framework - How to write good test cases](https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst)

## Robot Framework test suite structure

Robot Framework `.robot` file is a way to create and organize Robot Framework tests. It can include test cases, keywords and variables. The file can also include settings that may have documentation, metadata and resource and/or library imports.


TO-DO: separate this to the slides (maybe)
```
*** Settings ***
Documentation   Here you can add your suite documentation. For example to explain the suites purpose.

*** Varibles ***
${correct_credentials}   credentials

*** Keywords ***
Login With Correct Credentials  
    [Arguments]    ${correct_credentials}
    Log            ${correct_credentials}

*** Test Cases ***
Login Should Work Correctly
    Login With Correct Credentials

```

## Exercise 1 - Own Robot Framework test suite

Create a test case that logs a message saying "Hello, Robot Framework!". You may add documentation also to the ´*** Settings ****´ section.

TO-DO: Add some things about Metadata, Froce Tags jne fields. NOTE: there is a separate exercise about tagging!