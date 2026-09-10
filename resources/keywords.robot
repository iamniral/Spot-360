*** Settings ***
Documentation    This file will hold custom shortcuts for your test steps later.
Resource         appium_configs.robot

*** Keywords ***
# We will add custom keywords here once your app connection works!
Login to Application
    [Arguments]    ${username}    ${password}
    Start Mobile Application
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id="android:id/`input_field_username`"]
    Input Text    xpath=//android.widget.EditText[@resource-id="android:id/`input_field_username`"]   ${username}
    Input Text        xpath=//android.widget.EditText[@resource-id="android:id/`input_field_password`"]    ${password}
    Hide Keyboard     xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[2]
    Click Element         Xpath=//android.widget.Button              
    sleep    20s
     #STEP 6: Wait for the Device load
    Wait Until Page Contains Element    xpath=//android.view.View[@resource-id="android:id/`item_0`"]/android.view.View[1]
    #STEP 7: Click on available Device
    Click Element         xpath=//android.view.View[@resource-id="android:id/`item_0`"]/android.view.View[1]
    #STEP 8: Click on Connect Button
    Click Element         xpath=//android.view.View[@resource-id="android:id/`button_connect`"]
    sleep    20s