*** Settings ***
Resource        ../base/base.robot
Variables       homeLocator.yaml

*** Keywords ***

Click Sign In element in Homepage
    Wait Until Element Is Visible    ${sign-in-button}
    Click Element    ${sign-in-button}