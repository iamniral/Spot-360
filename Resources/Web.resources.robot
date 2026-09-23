*** Settings ***
Library        SeleniumLibrary    run_on_failure=Web.Capture Page Screenshot    WITH NAME    Web
Resource       ../Locaters/QAenvlocaters.robot
Resource    ../Labels/QAlabels.robot

*** Variables ***
${windowScreenWidth}     1920
${windowScreenHighth}    1080
${StandardTimeout}       30s


*** Keywords ***
Open findmespot On Browser
    Web.Open Browser    https://myaccounttest.findmespot.com/login    chrome
    Web.Set Window Size    ${windowScreenWidth}    ${windowScreenHighth}
    Web.Maximize Browser Window
    Web.Wait Until Element Is Visible    ${LoginButton}   
