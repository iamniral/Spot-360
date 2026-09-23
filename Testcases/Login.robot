*** Settings ***
Library        SeleniumLibrary
Resource       ../Locaters/QAenvlocaters.robot
Resource       ../Resources/Login.resources.robot
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

Verify Add New Device Screen Navigation
    [Tags]    TEST_CASE_51210
   
    Web.Wait Until Element Is Visible   ${Mydevices}     ${StandardTimeout}
    web.Click Element     ${Mydevices}
    Web.Wait Until Element Is Visible   ${Addnewspotdevice}     ${StandardTimeout}
    web.Click Element     ${Addnewspotdevice} 

Verify add the valid device details 
    [Tags]    TEST_CASE_51211
    Web.Wait Until Element Is Visible   ${ESN/UIDTextField}       ${StandardTimeout}
    Sleep   25s
    web.Input Text       ${ESN/UIDTextField}     ${ESN/UID} 
    Sleep  2s
    web.Input Text       ${Auth Code}      ${Auth_Code}  
    web.Input Text       ${DeviceName}      ${Nameofdevice}  
    Web.Click Button     ${ClickNextButton}

Verify that user is able to redirects to the plan page and select the plan
    [Tags]    TEST_CASE_51212
    Web.Wait Until Element Is Visible   ${ClickNextButton1}       ${StandardTimeout}
    web.Click Button     ${ClickNextButton1}
    sleep     10s

Verify that browser should be closed.
     [Tags]   TEST_CASE_51212
    Web.Close All Browsers