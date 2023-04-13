# Keywords

In Robot Framework, a keyword is a named operation that performs a specific task or action. Keywords are the basic building blocks of test cases and can be used to perform a wide range of operations, such as opening a web page, clicking a button, checking the contents of a file, or sending an email.

Robot Framework comes with a set of built-in keywords that can be used out of the box, such as *Log*, *Run Keyword If*, and *Should Be Equal*. These built-in keywords can be combined with user-defined keywords to create more complex and customized test cases. There are a lot of ready made libraries also which we'll learn later on in the course.

A user-defined keyword is a custom keyword created by the user to perform a specific task. User-defined keywords can be created using a combination of built-in and other user-defined keywords, making it possible to create reusable and modular test automation scripts. Keywords are the main way to organize and describe the steps in a test case in Robot Framework.

## Exercise 3 - User keywords

Your task is to create a custom keyword that logs in to the website using the specified username and password, and then verifies that the user is logged in.

To accomplish this, you'll need to create a new keyword that encapsulates the common test steps for logging in to the website, and then use this keyword in the test case. Here are the steps:

1. Add a *** Keywords *** section to the test suite file.
2. Define a new keyword called Login And Verify.
3. Move the common test steps for logging in to the website (i.e., everything after Go To) to the new Login And Verify keyword.
4. Replace the hardcoded username and password values with keyword arguments.
5. Add a Return From Keyword step to the new Login And Verify keyword to return the welcome message.
6. Modify the Verify login functionality test case to use the new Login And Verify keyword instead of the common test steps.
