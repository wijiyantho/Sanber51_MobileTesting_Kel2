*** Settings ***

Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4273/wd/hub


*** Keywords ***
Open Flight Application
    Open Application    remote_url=${REMOTE_URL}     




