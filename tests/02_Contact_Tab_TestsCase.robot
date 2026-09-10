*** Settings ***
Documentation     Automating Mobile App Login Scenarios
Library           AppiumLibrary
resource         appium_configs.robot
resource         keywords.robot

*** Variables ***
${REMOTE_URL}          http://127.0.0.1:4723
${PLATFORM_NAME}       Android
${AUTOMATION_NAME}     UiAutomator2
${DEVICE_NAME}         RZCX927AG1F
${APP_PACKAGE}         com.globalstar.gen5
${APP_ACTIVITY}        gen5.app.system.MainActivity

*** Test Cases ***
Testcase-001:Verify Successful Add new contact
   # [Documentation]    Test Case 1: Add new contact.
   # Open Application    ${REMOTE_URL}    
   #Step1: Lognin to the application
   Login to Application    Testapp025a6    Test@123
   #Step2: Open contact tab
   Click Element    xpath=//s2.a2/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[3]/android.view.View
   #Step3: Click on Add contact button
   Click Element    xpath=//android.widget.Button[@resource-id="android:id/`button_add`"]
   #Step4: Tap on Add new contact button
   Click Element    xpath=//android.view.View[@resource-id="android:id/`button_new_contact`"]
   #Step5: Enter contact first name
   Input Text    xpath=//android.widget.EditText[@resource-id="android:id/`input_field_first_name`"]   Joe
   #Step6: Enter contact last name
   Input Text    xpath=//android.widget.EditText[@resource-id="android:id/`input_field_last_name`"]   Root
   #Step7: Enter contact phone number
   Input Text    xpath=//android.widget.EditText[@resource-id="android:id/`input_field_phone_number`"]   1234567890
   # Step8: Click on Add contact button
   Click Element    xpath=//android.widget.Button

    [Teardown]

Testcase-002: Import Contact number from phone
   [Documentation]    Test Case 2: Successfully Import contact from phone
   #Step1: Wait for Contact screen
   Wait Until Page Contains Element   xpath=//android.widget.Button[@resource-id="android:id/`button_add`"]
   #Step2:Tap on Add new contact button
   Click Element    xpath=//android.widget.Button[@resource-id="android:id/`button_add`"]
   #Step3:Tab on Import contacts
   Click Element    xpath=//android.view.View[@resource-id="android:id/`button_import`"]
   #step4: select first contact
   Click Element    xpath=//s2.a2/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]
   #Step5: Click on Import button
   Click Element    xpath=//android.view.View[@resource-id="android:id/`button_import`"]/android.widget.Button
   #Step6: Click on add contact button
   Click Element    xpath=//android.widget.TextView[@text="Add Contact"]
   [Teardown]

Testcase-003: Send message on saved contact number
    [Documentation]    Test Case 3: Send message
    #Step1: Click on message tab
    Click Element    xpath=//s2.a2/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View
    #Step2: Click on new message
    Click Element    xpath=//android.view.View[@resource-id="android:id/`button_add`"]/android.view.View
    #Step4: Select saved contact
    Click Element   xpath=//s2.a2/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]
    #Step5: click on Next button
    Click Element   xpath=//android.widget.TextView[@text="Next"]
    #Step6: click on message box
    Click Element    xpath=//android.widget.EditText/android.view.View
    #Step7:type a Hello
    Input Text      xpath=//android.widget.EditText      Hello
    #Step8: Click on Send arrow
    Click Element    Xpath=//android.widget.Button[@resource-id="android:id/`button_send`"]


    [Teardown]

    

