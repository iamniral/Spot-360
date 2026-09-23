*** Settings ***
Library        SeleniumLibrary
Resource       ../Locaters/QAenvlocaters.robot
Resource       ../Resources/Web.resources.robot
Resource       ../Labels/QAlabels.robot
Library        DateTime

#Suite Teardown   UserManagementResources.Teardown Reset user permission

*** Test Cases ***
Verify that the user is able to open the chrome in full screen and accept the cookies.
    [Tags]    TEST_CASE_51208
    Open findmespot On Browser
    Web.Scroll Element Into View     ${Cookies}
    web.Click Button  ${Cookies}   
    Sleep    30s
    web.Wait Until Element Is Visible  ${UserNameTextField}  ${StandardTimeout} 

Verify that user is able to login with valid credentials and redirects to the dashboard.
     [Tags]    TEST_CASE_51209
    web.Input Text   ${UserNameTextField}    ${UserName}
    web.Input Text   ${PasswordTextField}    ${Password}
    Web.Wait Until Element Is Visible   ${LoginButton}     ${StandardTimeout}
    web.Click Button   ${LoginButton}
    Sleep   20s
    Web.Wait Until Element Is Visible   ${Mydevices}     ${StandardTimeout}

Verify that browser should be closed.
     [Tags]   TEST_CASE_51212
    Web.Close All Browsers