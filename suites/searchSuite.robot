*** Settings ***
Resource        ../pageObjects/homePO/homePage.robot
Resource        ../pageObjects/loginPO/loginPage.robot
Resource        ../pageObjects/searchFlightPO/searchFlight.robot

*** Variables ***
${VALID_USRNAME}        support@ngendigital.com
${VALID_PSWD}           abc123
${VALID_FLIGHT}         DA935
${INVALID_FLIGHT}       LI735


*** Test Cases ***
Search Valid Credential
    Open Flight Application
    Click Sign In element in Homepage
    Insert Username on Loginpage    ${VALID_USRNAME}
    Insert Password on Loginpage    ${VALID_PSWD}
    Click Sign In button on Loginpage
    Search in Mainmenu    ${VALID_FLIGHT}
    Close Flight Application

Search Invalid Credential
    Open Flight Application
    Click Sign In element in Homepage
    Insert Username on Loginpage    ${VALID_USRNAME}
    Insert Password on Loginpage    ${VALID_PSWD}
    Click Sign In button on Loginpage
    Search in Mainmenu    ${INVALID_FLIGHT}
    Capture Page Screenshot
    Close Flight Application

Sign Out from Mainmenu
    Open Flight Application
    Click Sign In element in Homepage
    Insert Username on Loginpage    ${VALID_USRNAME}
    Insert Password on Loginpage    ${VALID_PSWD}
    Click Sign In button on Loginpage
    Sign Out from Mainmenu
    Capture Page Screenshot
    Close Flight Application