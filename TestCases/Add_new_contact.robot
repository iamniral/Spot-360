*** Settings ***
Library        AppiumLibrary
Resource       ../Locators/Android_Locators.resource
Resource       ../Resources/Android_resources.resource
Resource       ../Locators/Labels.resource
Library        DateTime

#Suite Teardown   UserManagementResources.Teardown Reset user permission

*** Test Cases ***
Verify that the user is able to open to add and Serach Contact.
    login Spot App
    Navigate contact screen
    Add contact
    Add new contact
    Save Contact
    Contact search
    Contact Verification
    Contact Edit
    Log To Console    message=contact added sucesfully