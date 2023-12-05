*** Settings ***

Resource        ../base/base.robot
Variables       loginLocator.yaml

*** Keywords ***

Insert Username on Loginpage
    [Arguments]    ${usrname}
    Wait Until Element Is Visible    ${input-username}
    Input Text    ${input-username}    ${usrname}

Insert Password on Loginpage
    [Arguments]        ${pswd}
    Wait Until Element Is Visible    ${input-password}
    Input Password    ${input-password}    ${pswd}

Click Sign In button on Loginpage
    Click Element    ${sign-in-login}
    