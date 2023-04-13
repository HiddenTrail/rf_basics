# Variables

Variables in Robot Framework allow you to store and reuse values throughout your test cases. You can define variables using the *** Variables *** section in your test suite file, and then use them in your test cases by enclosing them in ${}.

1. Create a new test suite file called variable_tests.robot.
2. Define a test case that uses variables to store the search query and expected search result. The test case should perform the following steps:
    - Open the Google search page.
    - Input the search query.
    - Click the search button.
    - Verify that the search results page contains the expected search result.
3. Define the variables in the *** Variables *** section of the test suite file.
4. Use the variables in your test case to make it more flexible and reusable.
5. Run your test suite using the robot command-line tool or an IDE plugin.
6. Examine the test report to ensure that your test case passed.