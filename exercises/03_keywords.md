# Keywords

Your task is to create a custom keyword that logs in to the website using the specified username and password, and then verifies that the user is logged in.

To accomplish this, you'll need to create a new keyword that encapsulates the common test steps for logging in to the website, and then use this keyword in the test case. Here are the steps:

1. Add a *** Keywords *** section to the test suite file.
2. Define a new keyword called Login And Verify.
3. Move the common test steps for logging in to the website (i.e., everything after Go To) to the new Login And Verify keyword.
4. Replace the hardcoded username and password values with keyword arguments.
5. Add a Return From Keyword step to the new Login And Verify keyword to return the welcome message.
6. Modify the Verify login functionality test case to use the new Login And Verify keyword instead of the common test steps.
