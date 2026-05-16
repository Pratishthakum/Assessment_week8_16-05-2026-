*** Settings ***
Library  SeleniumLibrary
Library  ../config/env_loader.py
#Library  env_loader

*** Variables ***
${BROWSER}  chrome
${ENV}  qa

*** Keywords ***
Load Environment
    Load Env    ${ENV}
    ${url}=  Get Env    baseurl
    ${phone_no}=  Get Env    ph_no

    Set Global Variable    ${BASE_URL}  ${url}
    Set Global Variable    ${USER_EMAIL}  ${phone_no}

Open Application
    [Documentation]  Opens the application
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window
<<<<<<< HEAD
    Sleep    30s
=======
    Sleep    30
>>>>>>> 16cf5576c651d8a9939ca9e2ff1e71b87848e82f

Close Application
    [Documentation]  Closing the application
    Close All Browsers