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
    Sleep    2s
    web.Wait Until Element Is Visible  ${UserNameTextField}  ${StandardTimeout} 

Verify that user is able to login with valid credentials and redirects to the dashboard.
    [Tags]    TEST_CASE_51209
    web.Input Text   ${UserNameTextField}    ${UserName}
    web.Input Text   ${PasswordTextField}    ${Password}
    Web.Wait Until Element Is Visible   ${LoginButton}     ${StandardTimeout}
    web.Click Button   ${LoginButton}
   # Web.Wait Until Element Is Visible   ${Devices}     ${StandardTimeout}

Verify Add New Device Screen Navigation
    [Tags]    TEST_CASE_51210
    Web.Wait Until Element Is Visible   ${Addnewspotdevice}     ${StandardTimeout}
    web.Click Element     ${Addnewspotdevice}

Verify add the valid device details 
    [Tags]    TEST_CASE_51211
    Web.Wait Until Element Is Visible   ${ESN/UIDTextField}       ${StandardTimeout}
    Sleep   2s
    web.Input Text       ${ESN/UIDTextField}     ${ESN/UID} 
    Sleep  2s
    web.Input Text       ${AuthCodeTextField}      ${Auth_Code}
    web.Input Text       ${DeviceName}      ${Nameofdevice}  
    Web.Click Button     ${ClickNextButton}

Verify that user is able to redirects to the plan page and select the plan
    [Tags]    TEST_CASE_51212
    Web.Wait Until Element Is Visible   ${PlanPageHeader}       ${StandardTimeout}
    Web.Wait Until Element Is Visible   ${SelectedPlanCard}     ${StandardTimeout}
    Web.Wait Until Element Is Visible   ${ClickNextButton1}     ${StandardTimeout}
    Web.Scroll Element Into View        ${ClickNextButton1}
    Wait Until Keyword Succeeds    5x    1s    Web.Click Element    ${ClickNextButton1}
    Sleep    10s


Verify Overwatch X Rescue member details and navigate to Select Mapping
    [Tags]    TEST_CASE_51213
    Web.Wait Until Element Is Visible   ${OxRMemberFormHeader}     ${StandardTimeout}
    Web.Input Text       ${LocMemberFirstName}      ${MemberFirstName}
    Web.Input Text       ${LocMemberLastName}       ${MemberLastName}
    Wait Until Keyword Succeeds    5x    2s    Select OxR Country Until State Appears
    Select OxR State
    Web.Input Text       ${LocMemberEmail}          ${MemberEmail}
    Web.Input Text       ${LocMemberPhone}          ${MemberPhone}
    Web.Input Text       ${LocMemberAddress1}       ${MemberAddress1}
    Web.Input Text       ${LocMemberCity}           ${MemberCity}
    Web.Input Text       ${LocMemberPostalCode}     ${MemberPostalCode}
    Web.Scroll Element Into View        ${OxRNextButton}
    Wait Until Keyword Succeeds    5x    1s    Web.Click Element    ${OxRNextButton}
    Web.Wait Until Element Is Visible   ${SelectMappingHeader}     ${StandardTimeout}

Verify Select Mapping Next navigates to Additional Services
    [Tags]    TEST_CASE_51214
    Web.Wait Until Element Is Visible   ${SelectMappingHeader}         ${StandardTimeout}
    Web.Wait Until Element Is Visible   ${SelectMappingNextButton}     ${StandardTimeout}
    Web.Scroll Element Into View        ${SelectMappingNextButton}
    Wait Until Keyword Succeeds    5x    1s    Web.Click Element    ${SelectMappingNextButton}
    Web.Wait Until Element Is Visible   ${AdditionalServicesHeader}    ${StandardTimeout}

Verify Additional Services Decline options and navigate to Emergency Contacts
    [Tags]    TEST_CASE_51215
    Web.Wait Until Element Is Visible   ${AdditionalServicesHeader}        ${StandardTimeout}
    Web.Click Element    ${DeclineProductReplacement}
    Web.Click Element    ${DeclineSpotRAP}
    Web.Wait Until Element Is Visible   ${AdditionalServicesNextButton}    ${StandardTimeout}
    Web.Scroll Element Into View        ${AdditionalServicesNextButton}
    Wait Until Keyword Succeeds    5x    1s    Web.Click Element    ${AdditionalServicesNextButton}
    Web.Wait Until Element Is Visible   ${EmergencyContactsHeader}         ${StandardTimeout}

Verify Emergency Contacts details are filled
    [Tags]    TEST_CASE_51216
    Web.Wait Until Element Is Visible   ${EmergencyContactsHeader}     ${StandardTimeout}
    Web.Input Text       ${LocPrimaryContactName}       ${PrimaryContactName}
    Select Country Autocomplete Option    ${LocPrimaryContactCountry}    ${LocPrimaryContactCountryOption}
    Web.Input Text       ${LocPrimaryContactPhone}      ${PrimaryContactPhone}
    Web.Input Text       ${LocSecondaryContactName}     ${SecondaryContactName}
    Select Country Autocomplete Option    ${LocSecondaryContactCountry}    ${LocSecondaryContactCountryOption}
    Web.Input Text       ${LocSecondaryContactPhone}    ${SecondaryContactPhone}
    Web.Scroll Element Into View        ${EmergencyContactsNextButton}
    Wait Until Keyword Succeeds    5x    1s    Web.Click Element    ${EmergencyContactsNextButton}
    Web.Wait Until Element Is Visible   ${ReviewPaymentHeader}     ${StandardTimeout}

Verify that browser should be closed.
    [Tags]   TEST_CASE_51217
    Web.Close All Browsers