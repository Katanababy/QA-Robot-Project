*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords.robot

*** Test Cases ***
ทดสอบ Login สำเร็จ
    เปิดเบราว์เซอร์
    Login ด้วย    tomsmith    SuperSecretPassword!
    Page Should Contain    You logged into a secure area!
    ปิดเบราว์เซอร์

ทดสอบ Login ผิด Password
    เปิดเบราว์เซอร์
    Login ด้วย    tomsmith    wrongpassword
    Page Should Contain    Your password is invalid!
    ปิดเบราว์เซอร์