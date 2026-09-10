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
Testcase-001:Verify send message to new contact
   # [Documentation]    Test Case 1: Send a new message to saved contact 
    #Step1: Lognin to the application
    # Open Application    ${REMOTE_URL} 
    Login to Application    Testapp025a6    Test@123
    #Step1: Click on message tab
    Click Element    xpath=//s2.a2/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View
    #Step2: Click on new message
    Click Element    xpath=//android.view.View[@resource-id="android:id/`button_add`"]/android.view.View
    #Step4:Click add new contact
    #Click Element   xpath=//s2.a2/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[4]
    #Step5: click on Phone and type a number
    #Input Text      xpath=//android.widget.EditText[@resource-id="android:id/`input_field_phone_number`"]/android.view.View     9604783799
    #Step6:type a number
    #Input Text       xpath=//android.widget.EditText[@resource-id="android:id/input_field_phone_number"]/android.view.View        9876543210
    #Step6: click on Add
    #Click Element    xpath=//android.widget.TextView[@text="Add"]
    #Step7:Click on next
    #Click Element    xpath=//android.widget.TextView[@text="Next"]
    #Step8:Click on message
    #Click Element   xpath=//android.widget.EditText/android.view.View
    #Step9:type a Hello
    #Input Text      xpath=//android.widget.EditText      Hello
    #Step10: Click on Send arrow
    #Click Element    Xpath=//android.widget.Button[@resource-id="android:id/`button_send`"]
     Click Element     xpath=//s2.a2/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]
     Click Element     xpath=//android.widget.TextView[@text="Next"]
     Click Element     xpath=//android.widget.Button[@resource-id="android:id/`button_message_type`"]
     Click Element     xpath=//android.widget.TextView[@text="I'll check in with you again soon!"]
     Click Element    Xpath=//android.widget.Button[@resource-id="android:id/`button_send`"]

    [Teardown]

