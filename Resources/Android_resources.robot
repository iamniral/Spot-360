*** Settings ***
Library        AppiumLibrary
Resource       ../Locaters/QAenvlocaters.robot
Resource    ../Labels/QAlabels.robot
Resource       ../Resources/App_config.resource


*** Keywords ***


Spot App Intrduction skip
    Run Keyword And Ignore Error    Click Element    ${App_Get_Started}
    FOR    ${index}    IN RANGE    10
        Click Element    ${Tap_10_time_top_Right_up_corner}
        Sleep    0.1s    # Gives the application 100 milliseconds to process each tap
    END
    Click Element    ${API_enviroment_change}
    Click Element    ${Test_prod_app_select}
    Start Spot Application

Spot App Forgot Username
    Click Element    ${App_Forgot_Username}
    Wait Until Element Is Visible    ${App_forgot_Username_Email}
    Input Text    ${App_forgot_Username_Email}    ${App_Forgot_enter_Email}
    Click Element    ${App_send_username_via_Email}
    Wait Until Element Is Visible  ${App_Forgot_Username_Sign_In}
    Click Element    ${App_Forgot_Username_Sign_In}

Enter login Detils
    Wait Until Page Contains Element    ${App_Login_username}
    Input Text    ${App_Login_username}    ${Mobile_app_username}
    Input Text    ${App_Login_Password}    ${Mobile_app_password}
    Click Element    ${App_Login_button}

Spot Device Selection
    Wait Until Element Is Visible    ${Spot_BLE_notification_pop_up}
    Run Keyword And Ignore Error    Click Element    ${Spot_BLE_notification_pop_up}
    Wait Until Page Contains Element    ${Spot_Device_select}    timeout=20s
    #Wait Until Element Is Visible    ${Spot_Device_select}
    Click Element    ${Spot_Device_select}
    Click Element    ${Connect_button}
    Wait Until Element Is Visible    ${Spot_pop_up_Notification}
    Click Element    ${Spot_pop_up_Notification}

login Spot App
    Start Spot Application
    Run Keyword And Ignore Error    Spot App Intrduction skip
    Spot App Forgot Username
    Enter login Detils
    Spot Device Selection


# Contacts Keyword

Navigate contact screen
    Wait Until Element Is Visible    ${Navigate_contact}
    Click Element     ${Navigate_contact}

Add contact
    Click Element    ${Add_contact}

Add new contact
    Click Element    ${Add_new_contact}
    Input Text    ${Contact_First_name_TextField}    ${First_Name}
    Input Text    ${Contact_Last_name_TextField}     ${Last_Name}
    Input Text    ${Contact_Phone_number_TextField}  ${Phone_Number}

Save Contact
    Click Element    ${Save_Contact_button}

Contact search
    Wait Until Page Contains Element    ${contact_search_bar}    timeout=10s
    Click Element    ${contact_search_bar}
    Input Text       ${contact_search_bar}    ${First_Name} ${Last_Name}

Contact Verification
    Page Should Contain Text    ${First_Name}  ${Last_Name}  
