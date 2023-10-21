# Tagging

Test case tagging is a feature in Robot Framework that allows you to assign one or more tags to a test case. Tags are user-defined labels that can be used to categorize and organize test cases.

Test case tagging is particularly useful when you have a large test suite with multiple test cases that need to be executed selectively. You can use tags to group test cases based on various criteria such as functionality, priority, or test environment.

In addition, tags can also be used to provide additional information about test cases, such as the browser or device being tested, the application version, or any other relevant information that may be helpful in understanding the purpose of the test case.

Once you have tagged your test cases, you can use the --include and --exclude command-line options to selectively execute the test cases based on their tags. This makes it easy to run only the tests that are relevant to a particular scenario or test environment.

## Exercise 9 - Tagging

**Objective:** Learn the basic tagging in Robot Framework.

In this exercise you may add some tags to your old test cases. Add different kinds on the test cases and on the *** Settings *** with Test Tags to add some tags to all of the test cases in that suite. Also, try different running options with --include and --exclude with the added tags.
