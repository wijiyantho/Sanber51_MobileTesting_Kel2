*** Settings ***
Resource        ../pageObjects/homePO/homePage.robot
Resource        ../pageObjects/loginPO/loginPage.robot

*** Variables ***
${VALID_USRNAME}        support@ngendigital.com
${VALID_PSWD}           abc123
${INVALID_USRNAME}      support@digital.com
${INVALID_PSWD}         abcd12


*** Test Cases ***
Login Valid Credential
    Open Flight Application
    Click Sign In element in Homepage
    Insert Username on Loginpage    ${VALID_USRNAME}
    Insert Password on Loginpage    ${VALID_PSWD}
    Click Sign In button on Loginpage
    Close Flight Application

Login Invalid Credential
    Open Flight Application
    Click Sign In element in Homepage
    Insert Username on Loginpage    ${INVALID_USRNAME}
    Insert Password on Loginpage    ${INVALID_PSWD}
    Click Sign In button on Loginpage
    Capture Page Screenshot
    Close Flight Application

