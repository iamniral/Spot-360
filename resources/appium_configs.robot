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

*** Keywords ***
Start Mobile Application
    Open Application    ${REMOTE_URL}    
    ...                 platformName=${PLATFORM_NAME}    
    ...                 deviceName=${DEVICE_NAME}    
    ...                 automationName=${AUTOMATION_NAME}    
    ...                 appPackage=${APP_PACKAGE}    
    ...                 appActivity=${APP_ACTIVITY}
    ...                 noReset=true

Stop Mobile Application
    Close Application

