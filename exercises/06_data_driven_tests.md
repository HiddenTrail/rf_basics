# Data driven tests and test template

Data-driven development allows you to run the same test case with different input data, making your tests more flexible and reusable. Test templates allow you to define the common test steps in a separate keyword, making your test cases easier to read and maintain.

## Exercise 6.1 - Data driven tests and test template

**Objective**: Develop your skills in data-driven testing with Robot Framework and the Browser library with login attempts.

You should do the following:

1. You may copy your existing test suite to create data-driven test suite.
2. In the *** Keywords *** section, create a test case template for logging in using a username from a list of usernames. After each login attempt, validate whether the login was unsuccessful. Then clear the input fields for the next attempt.
3. Use Test Template in *** Settings *** section with your just created keyword.
4. Create a test case that uses this template to perform multiple login attempts.

## Exercise 6.2 - Data driven tests and unvalid login

**Objective:** Automate multiple login attempts with different usernames and passwords to validate the login error message using the Browser library. Now we are using some different type of Test Template usage.

You should do the following:

1. Open the browser and navigate to saucedemo.com.
2. Attempt to log in with invalid (does not login) set of usernames and passwords and now also with login attempt.
3. Verify that the login error message appears for each invalid login attempt and that the login has been successful with the correct credentials.

## Exercise 6.3 - Data driven tests and checkout flow

NOTE! This exercise can be done after the other sections as a bonus exercise.

**Objective:** Automate the checkout flow for a single product with multiple sets of user data (first name, last name, postal code) to validate successful checkout.

Steps:

1. Log in with valid credentials.
2. Add a specific product to the cart.
3. Proceed to checkout and enter user details (at least to two users, you may come up with any name or information).
4. Validate that the checkout was successful.
5. Log out and close the browser.

Use proper usage of everything we have learned in 6.3: locators, setups and teardowns. You may also add tagging and proper test suite structure. Pretent you are doing this in a real project that tests saucedemo.com

