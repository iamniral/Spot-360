*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://127.0.0.1:4723
${PLATFORM}       Android
${DEVICE_NAME}    4B181VDAQ0001S
${APP_PACKAGE}    com.globalstar.gen5
${APP_ACTIVITY}   gen5.app.system.MainActivity

*** Keywords ***
Start Spot Application
    Open Application    ${REMOTE_URL}    
    ...                 platformName=${PLATFORM}    
    ...                 deviceName=${DEVICE_NAME}    
    ...                 appPackage=${APP_PACKAGE}    
    ...                 appActivity=${APP_ACTIVITY}    
    ...                 automationName=UiAutomator2
    ...                 newCommandTimeout=500    # Keeps the session alive for 5 minutes of idling
    ...                 appium:noReset=${true}
    ...                 forceAppLaunch=${true}

Stop Spot Application
    Close Application