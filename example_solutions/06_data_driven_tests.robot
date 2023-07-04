*** Settings ***
Library  Browser

Suite Setup   Open Test Browser
Test Setup    New Page  ${URL}
Suite Teardown   Close Test Browser

*** Variables ***
${URL}  https://www.saucedemo.com/
${BROWSER}  chromium
${PASSWORD}  secret_sauce
${USERNAME_INPUT}  id=user-name
${PASSWORD_INPUT}  id=password
${LOGIN_BUTTON}  id=login-button

*** Test Cases ***
Invalid Login
  [Template]  Attempt Login With Invalid Credentials
  standard_user_wrong
  problem_user_wrong
  performance_glitch_user_wrong

*** Keywords ***
Open Test Browser
  New Browser  ${BROWSER}

Close Test Browser
  Close Browser   ALL

Attempt Login With Invalid Credentials
  [Arguments]  ${username}
  Fill Text  ${USERNAME_INPUT}  ${username}
  Fill Text  ${PASSWORD_INPUT}  ${PASSWORD}
  Click  ${LOGIN_BUTTON}
  Get Element States    id=${LOGIN_BUTTON}
  Wait For Elements State   //*[@id="login_button_container"]/div/form/div[3]/h3/button   visible   2s
