*** Settings ***
Documentation     Automating Mobile App Login Scenarios
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}          http://127.0.0.1:4723
${PLATFORM_NAME}       Android
${AUTOMATION_NAME}     UiAutomator2
${DEVICE_NAME}         RZCX927AG1F
${APP_PACKAGE}         com.globalstar.gen5
${APP_ACTIVITY}        gen5.app.system.MainActivity

*** Test Cases ***
Testcase-001:Verify Successful Login With Valid Credentials
    [Documentation]    Test Case 1: Entering correct details navigates user to dashboard.
    Open Application    ${REMOTE_URL}    
    ...                 platformName=${PLATFORM_NAME}    
    ...                 automationName=${AUTOMATION_NAME}    
    ...                 deviceName=${DEVICE_NAME}    
    ...                 appPackage=${APP_PACKAGE}    
    ...                 appActivity=${APP_ACTIVITY}    
    ...                 noReset=true

    # STEP 1: Wait for the login screen to load completely
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id="android:id/`input_field_username`"]
    ...      timeout=10s

    # STEP 2: Type the username
        Input Text    xpath=//android.widget.EditText[@resource-id="android:id/`input_field_username`"]   Testapp025a6

    # STEP 3: Type the password
    Input Text        xpath=//android.widget.EditText[@resource-id="android:id/`input_field_password`"]    Test@123

    # STEP 4: Hide the on-screen keyboard so it does not block the login button
    Hide Keyboard     xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[2]

    # STEP 5: Click the Sign In Button
    Click Element         Xpath=//android.widget.Button              
    sleep    20s
    #STEP 6: Wait for the Device load
    Wait Until Page Contains Element    xpath=//android.view.View[@resource-id="android:id/`item_0`"]/android.view.View[1]
    #STEP 7: Click on available Device
    Click Element         xpath=//android.view.View[@resource-id="android:id/`item_0`"]/android.view.View[1]
    #STEP 8: Click on Connect Button
    Click Element         xpath=//android.view.View[@resource-id="android:id/`button_connect`"]
    sleep    20s

    [Teardown]

Testcase-002: Verify Successful Signout
    [Documentation]    Test Case 2: Successfully signing out navigates user to login screen.

    # STEP 1: On dashbord screen
    Wait Until Page Contains Element    xpath=//s2.b2/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View

    # STEP 2: Click on profile icon
    Click Element         xpath=//android.view.View[@resource-id="android:id/`button_user_profile`"]/android.view.View
    sleep    5s
    # STEP 3: Click on Sign Out button
    Click Element         xpath=//android.widget.TextView[@text="Sign Out"]


    [Teardown]

     