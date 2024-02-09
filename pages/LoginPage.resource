*** Settings ***
Resource    ../base/common_functionality.resource


*** Variables ***
${LOCATOR_USERNAME}     id=authUser
${LOCATOR_PASSWORD}     id=clearPass
${LOCATOR_language}     xpath=//Select[@name='languageChoice']
${LOCATOR_LOGIN}        id=login-button


*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Input Text    ${LOCATOR_USERNAME}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Password    ${LOCATOR_PASSWORD}    ${password}

Select Language By Label
    [Arguments]    ${language}
    Select From List By Label    ${LOCATOR_language}    ${language}

Click Login
    Click Element    ${LOCATOR_LOGIN}
