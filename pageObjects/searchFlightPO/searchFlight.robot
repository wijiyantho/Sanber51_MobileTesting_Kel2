*** Settings ***

Resource        ../base/base.robot
Resource        ../loginPO/loginPage.robot
Variables        searchLocator.yaml

*** Keywords ***

Search in Mainmenu
    [Arguments]    ${flightId}
    Wait Until Element Is Visible    ${click-search}
    Click Element    ${click-search}
    Wait Until Element Is Visible    ${input-search}
    Input Text    ${input-search}    ${flightId}
    Click Element    ${btn-search}

Sign Out from Mainmenu
    Wait Until Element Is Visible    ${click-sign-out}
    Click Element    ${click-sign-out}
    
