*** Settings ***
Library     SeleniumLibrary
Resource    ../base/common_functionality.resource


*** Keywords ***
Validate Main Page Title
    [Arguments]    ${expected_title}
    Title Should Be    ${expected_title}
