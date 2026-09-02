*** Variables ***
#################Login#########################################
${Cookies}             xpath://button[contains(text(), 'Accept') or contains(text(), 'Agree') or contains(text(), 'Allow')]
...    #xpath://*[@id="onetrust-accept-btn-handler"]
${UserNameTextField}                 //*[@placeholder="Username"]
${PasswordTextField}                 //*[@placeholder="Password"]
${LoginButton}                       //*[@id="top-element"]/div/main/app-login/div/div[3]/div[1]/form/div[2]/spotma-button/button
${Mydevices}                         //span[text()=" MY DEVICES "]  #/html/body/app-component/div/div/app-root-header/header/nav/ul/li[2]
${Addnewspotdevice}                  //a[text()=" Add New SPOT Device"]  #//*[@id="nav-add-new-device"]
${ESN/UIDTextField}                  //*[@id="47369c81-de10-4329-a150-bad01e84483d"]