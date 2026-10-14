*** Settings ***
Library        AppiumLibrary
Resource       ../Locators/Android_Locators.resource
Resource       ../Resources/Android_resources.resource
Resource       ../Locators/Labels.resource
Resource       ../Config/Android_config.resource
Library        DateTime

#Suite Teardown   UserManagementResources.Teardown Reset user permission

*** Test Cases ***
Verify user is able to login the Spot App
    Start Spot Application
    Run Keyword And Ignore Error    Spot App Intrduction skip
    Spot App Forgot Username
    Enter login Detils
    Spot Device Selection