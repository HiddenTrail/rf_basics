# Variables

Variables in Robot Framework allow you to store and reuse values throughout your test cases. You can define variables using the *** Variables *** section in your test suite file, and then use them in your test cases by enclosing them in ${}.

## Exercise 4.1 - Variables

Exercise: **Parameterizing the Google Search Test Suite**

Objective: Refactor the Google Search test suite to use variables for the search URL and the search query.

We will introduce two variables:

1. ${URL}: The URL of the Google homepage. (string)
2. ${QUERY}: The search query. (string)

You should replace the hardcoded strings in the test suite and the resource file with these variables.

## Exercise 4.2 - Other types of variables

Objective: Extend the Google Search test suite to use different variable types.

Variables can be of different types in Robot Framework, not only strings. For this exercise, let's introduce the following variables:

3. ${TIMEOUT}: The timeout for Wait For Elements State keyword. (integer)
4. ${COOKIE_BUTTON_ID}: The id of the button to accept all cookies. (string)
5. &{SELECTORS}: The CSS selectors for the search box, the search button, and the search results. (dictionary)

Your task is to modify the test suite to use these variables.