*** Settings ***
Resource    05_resource_file.robot

*** Test Cases ***
Login To saucedemo.com
    Open Login Homepage
    Input Credentials And Login

