*** Variables ***
#################Login#########################################
${Cookies}             xpath://button[contains(text(), 'Accept') or contains(text(), 'Agree') or contains(text(), 'Allow')]
...    #xpath://*[@id="onetrust-accept-btn-handler"]
${UserNameTextField}                 //*[@placeholder="Username"]
${PasswordTextField}                 //*[@placeholder="Password"]
${LoginButton}                       //*[@id="top-element"]/div/main/app-login/div/div[3]/div[1]/form/div[2]/spotma-button/button
${Mydevices}    //span[contains(@class,"active") and normalize-space(.)="MY DEVICES"]
${Addnewspotdevice}      //span[@tabindex="0" and contains(@class,"active")]
