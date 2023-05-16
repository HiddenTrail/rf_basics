# Keywords

In Robot Framework, a keyword is a named operation that performs a specific task or action. Keywords are the basic building blocks of test cases and can be used to perform a wide range of operations, such as opening a web page, clicking a button, checking the contents of a file, or sending an email.

Robot Framework comes with a set of built-in keywords that can be used out of the box, such as *Log*, *Run Keyword If*, and *Should Be Equal*. These built-in keywords can be combined with user-defined keywords to create more complex and customized test cases. There are a lot of ready made libraries also which we'll learn later on in the course.

A user-defined keyword is a custom keyword created by the user to perform a specific task. User-defined keywords can be created using a combination of built-in and other user-defined keywords, making it possible to create reusable and modular test automation scripts. Keywords are the main way to organize and describe the steps in a test case in Robot Framework.

## Exercise 3 - User keywords

Objective: Create a test case to perform a Google search and verify that the search results page is displayed. Also wrap every keyword with your own user keyword with a understandable keyword name.

Steps:

1. Open the Google homepage.
2. Input the search query.
3. Submit the search query.
4. Verify that the search results page is displayed.

For this exercise, assume the following:

- The URL of the Google homepage is "https://www.google.com".
- The search field has the name attribute "q".
- The title of the search results page starts with the search query.