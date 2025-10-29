*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ROBOT}    https://robotframework.org/
${PETZ}     https://www.petz.com.br/
${SHOPEE}   https://shopee.com.br/?
${BROWSER}       chrome
${TEMPO_ESPERA}  3s

*** Keywords ***
Abrir Site
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}
    Sleep           ${TEMPO_ESPERA}
    Close Browser

*** Test Cases ***
Abrir três sites em sequência
    Abrir Site    ${ROBOT}
    Abrir Site    ${PETZ}
    Abrir Site    ${SHOPEE}

