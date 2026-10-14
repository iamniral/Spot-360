*** Settings ***
Library        AppiumLibrary
Resource       ../Locaters/QAenvlocaters.robot
Resource       ../Resources/Android_resources.robot
Resource       ../Labels/QAlabels.robot
Resource       ../Resources/App_config.resource
Library        DateTime

#Suite Teardown   UserManagementResources.Teardown Reset user permission

*** Test Cases ***
Verify user is able to login the Spot App
    Start Spot Application
    Run Keyword And Ignore Error    Spot App Intrduction skip
    Spot App Forgot Username
    Enter login Detils
    Spot Device Selection