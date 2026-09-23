*** Variables ***
#################Login#########################################
${Cookies}             xpath://button[contains(text(), 'Accept') or contains(text(), 'Agree') or contains(text(), 'Allow')]
...    #xpath://*[@id="onetrust-accept-btn-handler"]
${UserNameTextField}                 //*[@placeholder="Username"]
${PasswordTextField}                 //*[@placeholder="Password"]
${LoginButton}                       //*[@id="top-element"]/div/main/app-login/div/div[3]/div[1]/form/div[2]/spotma-button/button
${Mydevices}                         //span[text()=" MY DEVICES "]  #/html/body/app-component/div/div/app-root-header/header/nav/ul/li[2]
${Addnewspotdevice}                  //a[text()=" Add New SPOT Device"]  #//*[@id="nav-add-new-device"]
${ESN/UIDTextField}                  //input[@data-test="deviceId"]
${Auth Code}                         //input[@data-test="authCode"]
${DeviceName}                        //input[@data-test="deviceName"]
${ClickNextButton}                   //*[@id="top-element"]/div/main/app-add-new-device/spotma-add-device/div/div[2]/form/div[2]/spotma-button[2]/button
${ClickNextButton1}                  //*[@id="top-element"]/html/body/app-component/div/div/main/app-add-new-device/app-select-plan/div/div[4]/spotma-button[2]/button




