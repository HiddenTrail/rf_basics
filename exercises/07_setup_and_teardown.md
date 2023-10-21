# Setup and teardown

Setups and teardowns in Robot Framework are special keywords that allow you to define common actions that should be executed before and after each test case or test suite.

Setups are used to perform any necessary preparation or setup steps before each test case or test suite is executed. For example, you may want to set up a database connection, initialize test data, or log in to a system.

Teardowns are used to perform any necessary cleanup or tear-down steps after each test case or test suite has completed. For example, you may want to close a database connection, delete test data, or log out of a system.

You can define setups and teardowns at different levels of the test hierarchy, including the suite level, the test case level, and the keyword level. This allows you to customize the setup and teardown actions depending on your testing needs.

By using setups and teardowns in Robot Framework, you can make your test cases more efficient and maintainable, and reduce the amount of duplicated code.

## Exercise 7 - Setup and teardown

**Objective:** Your task is to modify your test suite to use setups and teardowns to perform common test steps before and after each test case. To accomplish this, you'll need to define a setup and a teardown keyword that encapsulate the common test steps for opening and closing the browser, and then use these keywords in the test suite. Here are the steps:

1. Add a *** Keywords *** section to your test suite file.
2. Define a new keyword called Open Available Browser. Add Open Browser keyword there with correct variables.
3. Define a new keyword called Close Used Browser. Add Close Browser keyword there.
5. Add a Suite Setup setting to the test suite that calls the Open Available Browser keyword.
6. Add a Suite Teardown setting to the test suite that calls the Close Used Browser keyword.
