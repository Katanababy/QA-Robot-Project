*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิดเบราว์เซอร์
    Open Browser    https://the-internet.herokuapp.com    chrome
    Maximize Browser Window

ปิดเบราว์เซอร์
    Close Browser

Login ด้วย
    [Arguments]    ${username}    ${password}
    Go To    https://the-internet.herokuapp.com/login
    Input Text      id=username    ${username}
    Input Text      id=password    ${password}
    Click Element   css=button[type='submit']