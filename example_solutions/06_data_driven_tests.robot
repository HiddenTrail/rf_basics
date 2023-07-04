*** Settings ***
Library  Browser

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

Attempt Login With Invalid Credentials
  [Arguments]  ${username}
  New Browser  ${BROWSER}
  New Page  ${URL}
  Fill Text  ${USERNAME_INPUT}  ${username}
  Fill Text  ${PASSWORD_INPUT}  ${PASSWORD}
  Click  ${LOGIN_BUTTON}
  Get Element States    id=${LOGIN_BUTTON}
  Wait For Elements State   //*[@id="login_button_container"]/div/form/div[3]/h3/button   visible   2s
  Close Browser
