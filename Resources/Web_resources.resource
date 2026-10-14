*** Settings ***
Library        SeleniumLibrary    run_on_failure=Web.Capture Page Screenshot    WITH NAME    Web
Resource       ../Locators/Web_Locators.resource
Resource       ../Locators/Labels.resource

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

Select OxR Country Until State Appears
    Web.Scroll Element Into View    ${LocMemberCountry}
    Web.Click Element    ${LocMemberCountry}
    Web.Wait Until Element Is Visible    ${LocMemberCountryOption}    ${StandardTimeout}
    Web.Scroll Element Into View    ${LocMemberCountryOption}
    Web.Click Element    ${LocMemberCountryOption}
    ${selected}=    Run Keyword And Return Status    Web.Wait Until Element Is Visible    ${LocMemberState}    5s
    Run Keyword If    ${selected}    Return From Keyword
    Web.Click Element    ${LocMemberCountry}
    Web.Wait Until Element Is Visible    ${LocMemberCountryOption}    ${StandardTimeout}
    Web.Press Keys    ${LocMemberCountry}    RETURN
    Web.Wait Until Element Is Visible    ${LocMemberState}    10s

Select OxR State
    Web.Scroll Element Into View    ${LocMemberState}
    Web.Click Element    ${LocMemberState}
    Web.Wait Until Element Is Visible    ${LocMemberStateOption}    ${StandardTimeout}
    Web.Scroll Element Into View    ${LocMemberStateOption}
    Web.Click Element    ${LocMemberStateOption}

Select Country Autocomplete Option
    [Arguments]    ${country_input}    ${country_option}
    Web.Scroll Element Into View    ${country_input}
    Web.Click Element    ${country_input}
    Web.Wait Until Element Is Visible    ${country_option}    ${StandardTimeout}
    Web.Scroll Element Into View    ${country_option}
    Web.Click Element    ${country_option}
    ${still_open}=    Run Keyword And Return Status    Web.Element Should Be Visible    ${country_option}
    Run Keyword If    ${still_open}    Web.Press Keys    ${country_input}    RETURN
