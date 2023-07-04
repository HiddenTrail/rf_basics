# Data driven tests and test template

Data-driven development allows you to run the same test case with different input data, making your tests more flexible and reusable. Test templates allow you to define the common test steps in a separate keyword, making your test cases easier to read and maintain.

## Exercise 6 - Data driven tests and test template

**Objective**: Develop your skills in data-driven testing with Robot Framework and the Browser library.

You should do the following:

1. You may copy your existing test suite to create data-driven test suite.
2. In the *** Keywords *** section, create a test case template for logging in using a username from a list of usernames. After each login attempt, validate whether the login was unsuccessful. Then clear the input fields for the next attempt.
3. Use Test Template in *** Settings *** section.
4.Create a test case that uses this template to perform multiple login attempts.