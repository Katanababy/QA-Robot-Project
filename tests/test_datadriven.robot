*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords.robot

*** Variables ***
${BROWSER}    chrome

*** Test Cases ***
ทดสอบ Login หลายชุด
    [Template]    Login แล้วเช็คผล
    tomsmith    SuperSecretPassword!    You logged into a secure area!
    tomsmith    wrongpassword           Your password is invalid!
    baduser     SuperSecretPassword!    Your username is invalid!

*** Keywords ***
Login แล้วเช็คผล
    [Arguments]    ${user}    ${pass}    ${expected}
    เปิดเบราว์เซอร์
    Go To           https://the-internet.herokuapp.com/login
    Input Text      id=username    ${user}
    Input Text      id=password    ${pass}
    Click Element   css=button[type='submit']
    Wait Until Page Contains    ${expected}    timeout=10s
    ปิดเบราว์เซอร์