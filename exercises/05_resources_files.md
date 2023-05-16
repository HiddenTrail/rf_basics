# Resource files

In Robot Framework, a resource file is a text file that contains user-defined keywords and reusable settings that can be imported and used in other test cases or resource files.

Resource files are typically used to define common functionality or to encapsulate a specific area of functionality within an application. For example, a resource file could contain a set of keywords for interacting with a particular website, or for performing a specific set of calculations.

Resource files can be imported into test cases or other resource files using the Resource or Variables settings. Once imported, the keywords and settings defined in the resource file can be used just like any other keyword or setting in the test case or resource file.

Using resource files can help to reduce duplication and make test cases more modular and maintainable. It also allows for easier reuse of code across multiple test cases or projects.

## Exercise 5 - Resource files

Exercise: Refactoring Google Search Test Suite with Resource Files

Objective: Refactor the Google Search test suite to use a resource file.

We will extract all user keywords into a separate file, which will make our test suite cleaner and our keywords reusable across different test suites. You may also add your variables into the resource file.