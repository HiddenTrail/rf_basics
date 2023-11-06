# Locators

 Locators are essentially ways to find specific elements within a web page so that you can interact with them for testing purposes. This allows you to automate actions like clicking buttons, entering text, and reading text from the page. There are several strategies for locating elements, including by ID, name, CSS selector, XPath, and link and button text, among others.

 For example, a locator might look like this:

- By ID: id=username
- By name: name=password
- By CSS selector: css=input[type='submit']
- By XPath: xpath=//input[@type='submit']
- By link text: link=Logout
- By button text: button=Login

## Exercise 8.1 - Locators

**Objective:** The goal is to learn basics about different types of locators.

1. First step is to browse through the inspect tool in your browser and check the search functionality.
2. Copy login functionality from previous test suites to a new one.
3. When you have logged in to https://www.saucedemo.com/inventory.html you task is following:
    - Check that the first item is "Sauce Labs Backpack" with xpath and css. (Create different test cases for these).
    - Check that the Sauce Labs Backpack has Add to Cart button with id.

## Exercise 8.2 - Locators Extra Exercise

As an extra challenge, check that the price of the "Sauce Labs Backpack" is $29.99. You may use any locator to your choosing to accomplish this.

## Exercise 8.3 - Locators Another Extra Exercise

Do the same as in 8.1 OR 8.2 but you are not allowed to use any id:s as the locator. There is no solution for this, but you may check the other solutions as an example.
