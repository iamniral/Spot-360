*** Settings ***
Library        AppiumLibrary
Resource       ../Locaters/QAenvlocaters.robot
Resource       ../Resources/Android_resources.robot
Resource       ../Labels/QAlabels.robot
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
    Log To Console    message=contact added sucesfully