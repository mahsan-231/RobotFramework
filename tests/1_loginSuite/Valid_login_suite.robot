*** Settings ***
Library             SeleniumLibrary
Library             Easter
Library             DataDriver    file=../../test_data/Test_data_login.xlsx    sheet=valid_login
Resource            ../../base/common_functionality.resource

Test Setup          Launch Browse And Navigate To Url
Task Teardown       Close Browser
Test Template       Valid Login Template


*** Test Cases ***
${test_case_id}
# TC1
 #    admin    pass    English (Indian)    OpenEMR
# TC2
    #    accountant    accountant    English (Indian)    OpenEMR
# TC3
 #    physician    physician    Dutch    OpenEMR
TC4
    [Template]    None
    [Setup]    None
    Log To Console    Ahsan
    [Teardown]    None

# Valid Login Test
    # Input Text    id=authUser    admin
    # Input Password    id=clearPass    pass
    # Select From List By Label    xpath=//Select[@name='languageChoice']    English (Indian)
    # Click Element    id=login-button
    #    Title Should Be    OpenEMR

 #Add New Patient
 #    Click Element    xpath=//div[text()='Patient']
 #    Click Element    xpath=//div[text()='New/Search']
 #    Select Frame    xpath=//iframe[@name='pat']
 #    Input Text    id=form_fname    John
 #    Input Text    CSS_SELECTOR=form_lname    wick
 #    Select From List By Label    id=form_sex    Male


*** Keywords ***
Valid Login Template
    [Arguments]    ${username}    ${password}    ${language_choice}    ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    id=clearPass    ${password}
    Select From List By Label    xpath=//Select[@name='languageChoice']    ${language_choice}
    Click Element    id=login-button
    Title Should Be    ${expected_title}

    # driver.execute_script("document.querySelector('#bill-date-long').value='19/04/2002'")

    # print(len(context.table.rows))
    # enter dob
    # select gender
