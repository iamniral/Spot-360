*** Variables ***

#Mobile_App_Login
${Mobile_app_username}                    bhargav.vadaliya
${Mobile_app_password}                    Spot1234
${Mobile_app_lunch}
${App_Get_Started}                        //android.widget.TextView[@text="Get Started"]
${Tap_10_time_top_Right_up_corner}        //s2.b2/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]
${API_enviroment_change}                  //android.widget.ScrollView/android.view.View[4]/android.view.View[1]
${Test_prod_app_select}                   //android.widget.TextView[@text="Test"]
${App_Forgot_Username}                    //android.widget.TextView[@resource-id="android:id/`button_forgot_username`"]
${App_forgot_Username_Email}              //android.widget.EditText[@resource-id="android:id/`input_field_email`"]
${App_Forgot_enter_Email}                 bhargav.vadaliya@acldigital.com
${App_send_username_via_Email}            //android.view.View[@resource-id="android:id/`button_send_username`"]/android.widget.Button
${App_Forgot_Username_Sign_In}            //android.widget.TextView[@text="Sign In"]
${App_Login_username}                     //android.widget.EditText[@resource-id="android:id/`input_field_username`"]
${App_Login_Password}                     //android.widget.EditText[@resource-id="android:id/`input_field_password`"]
${Hide_Keyboard}                          /hierarchy/android.widget.FrameLayout/android.widget.FrameLayout[2]
${App_Login_button}                       //android.widget.TextView[@text="Sign In"]
${Spot_BLE_notification_pop_up}           //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]
${Spot_Device_select}                     //android.view.View[@resource-id="android:id/`item_0`"]
${Connect_button}                         //android.view.View[@resource-id="android:id/`button_connect`"]
${Spot_pop_up_Notification}               //android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_button"]

# Contacts__Screen
${First_Name}                              Ram
${Last_Name}                               Verma
${Phone_Number}                            123457890
${Navigate_contact}                        //android.widget.TextView[@text="Contacts"]
${Add_contact}                             //android.widget.Button[@resource-id="android:id/`button_add`"]
${Add_new_contact}                         //android.view.View[@resource-id="android:id/`button_new_contact`"]
${Contact_First_name_TextField}            //android.widget.EditText[@resource-id="android:id/`input_field_first_name`"]
${Contact_Last_name_TextField}             //android.widget.EditText[@resource-id="android:id/`input_field_last_name`"]
${Contact_Phone_number_TextField}          //android.widget.EditText[@resource-id="android:id/`input_field_phone_number`"]
${Save_Contact_button}                     //android.widget.Button
${contact_search_bar}                      //android.widget.EditText[@resource-id="android:id/`input_field_search`"]
${contact_search_result}                   //android.widget.TextView[@text="Ram Verma"]
${Contact_Edit}                            //android.view.View[@resource-id="android:id/`button_edit`"]
#${Edit_First_Name_Clear}                   //android.view.View/android.widget.EditText[@resource-id="android:id/input_field_first_name_invalid"]
${Edit_First_Name}                         John
${Edit_Last_Name}                          Shekhar
${Country_Code_Dropdown}                   xpath=//*[contains(@text, "Country Code")]
${Target_Option}                           xpath=(//android.widget.TextView[contains(@text, "+")])[1]
#${Edit_Country_Code}                       1
${Edit_Phone_Number}                       98765436210
${Edit_Done}                               //android.widget.Button
