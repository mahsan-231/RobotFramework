*** Settings ***
Library             SeleniumLibrary
Resource            ../../base/common_functionality.resource

Test Setup          Launch Browse And Navigate To Url
Task Teardown       Close Browser


*** Test Cases ***
InValid Login Test
    Input Text    id=authUser    John
    Input Password    id=clearPass    1234
    Select From List By Label    xpath=//Select[@name='languageChoice']    English (Indian)
    Click Element    id=login-button
    Element Should Contain    xpath=//p[contains(text(), 'Invalid')]    Invalid username or password
