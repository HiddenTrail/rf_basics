# Variables

Variables in Robot Framework allow you to store and reuse values throughout your test cases. You can define variables using the *** Variables *** section in your test suite file, and then use them in your test cases by enclosing them in ${}.

## Exercise 4.1 - Variables

Exercise: **Parameterizing the Login Test Suite**

Objective: Refactor the Login test suite to use variables for the URL, and other values.

We will introduce two variables:

1. ${URL}: The URL to the saucedemo login page. (string)
2. ${USER_NAME_ID}: Username field ID. (string)
3. ${PSW_NAME_ID}: Password field ID. (string)

You should replace the hardcoded strings in the test suite and the resource file with these variables.

## Exercise 4.2 - Other types of variables

**Objective:** Extend the Login test suite to use different variable types.

Variables can be of different types in Robot Framework, not only strings. For this exercise, you may use different kind of variables and for example use the Log keyword to log them in your tests.