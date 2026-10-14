*** Settings ***
Library        AppiumLibrary
Resource       ../Locators/Android_Locators.resource
Resource    ../Locators/Labels.resource
Resource       ../Config/Android_config.resource


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
    Wait Until Element Is Visible    ${contact_search_result}    timeout=5s
    Page Should Contain Element    ${contact_search_result}
  
Contact Edit
    Click Element    ${contact_search_result} 
    Wait Until Element Is Visible    ${Contact_Edit}
    Click Element    ${Contact_Edit}
    #Clear Text    ${Contact_First_name_TextField}
    #Click Element    ${Edit_First_Name_Clear}
    Input Text    ${Contact_First_name_TextField}    ${Edit_First_Name}
    #Clear Text    ${Contact_Last_name_TextField}
    #Click Element    ${Contact_Last_name_TextField}
    Input Text    ${Contact_Last_name_TextField}     ${Edit_Last_Name}
    #Clear Text    ${Contact_Phone_number_TextField}
    #Click Element    ${Contact_Phone_number_TextField}
    
    Wait Until Element Is Visible    ${Country_Code_Dropdown}    timeout=5s
    Click Element                    ${Country_Code_Dropdown} 
    sleep   5s
    Wait Until Element Is Visible    ${Target_Option}      timeout=10s
    Click Element                    ${Target_Option}
    #Click Element    android=new UiScrollable(new UiSelector().scrollable(true)).scrollIntoView(new UiSelector().text("India"))
    Input Text    ${Contact_Phone_number_TextField}  ${Edit_Phone_Number}   
    Click Element     ${Edit_Done}
    