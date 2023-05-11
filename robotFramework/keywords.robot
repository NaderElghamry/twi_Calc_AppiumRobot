*** Settings ***
Library     AppiumLibrary
Resource    variables.robot

*** Keywords ***
Login With Invalid Username
    Page Should Contain Element         ${LOGIN-BUTTON}
    Click Element                       ${USERNAME-LOGIN-FIELD}
    Input Text                          ${USERNAME-LOGIN-FIELD}       ${INVALID_USER}
    Click Element                       ${PASSWORD-LOGIN-FIELD}
    Input Text                          ${PASSWORD-LOGIN-FIELD}       ${PASSWORD}
    Click Element                       ${LOGIN-BUTTON}
    Click Element                       ${LOGIN-BUTTON}
    Wait Until Element Is Visible       ${ERROR-ALERT}
    Page Should Contain Element         ${ERROR-ALERT}

Login With Invalid Password
    Page Should Contain Element             ${LOGIN-BUTTON}
    Click Element                           ${USERNAME-LOGIN-FIELD}
    Input Text                              ${USERNAME-LOGIN-FIELD}         ${USERNAME}
    Click Element                           ${PASSWORD-LOGIN-FIELD}
    Input Text                              ${PASSWORD-LOGIN-FIELD}         ${INVALID_PASS}
    Click Element                           ${LOGIN-BUTTON}
    Click Element                           ${LOGIN-BUTTON}
    Wait Until Element Is Visible           ${ERROR-ALERT}
    Page Should Contain Element             ${ERROR-ALERT}


Login With Empty Credentials
    Wait Until Page Contains Element             ${LOGIN-BUTTON}
    Click Element                                ${LOGIN-BUTTON}
    Wait Until Page Contains Element             ${ERROR-ALERT}
    Page Should Contain Element                  ${ERROR-ALERT}


Login With Valid Credintials
    Wait Until Page Contains Element        ${LOGIN-BUTTON}
    Click Element                           ${USERNAME-LOGIN-FIELD}
    Input Text                              ${USERNAME-LOGIN-FIELD}         ${USERNAME}
    Click Element                           ${PASSWORD-LOGIN-FIELD}
    Input Text                              ${PASSWORD-LOGIN-FIELD}         ${PASSWORD}
    Click Element                           ${LOGIN-BUTTON}
    Click Element                           ${LOGIN-BUTTON}
    Wait Until Page Contains Element        ${Calc_ICON}
    Page Should Contain Element             ${Calc_ICON}

#Login Keyword
#    [Arguments]     ${username}     ${password}
#    Input Text      ${USERNAME-LOGIN-FIELD}   ${username}
#    Input Text      ${PASSWORD-LOGIN-FIELD}    ${password}

Validate ADD
    Login With Valid Credintials
    Click Element                                ${BUTTON5}
    Wait Until Element Is Visible                ${PLUS_BUTTON}
    Click Element                                ${PLUS_BUTTON}
    Click Element                                ${BUTTON6}
    Click Element                                ${EQUAL_BUTTON}
    Element Should Contain Text                  ${RESULT}                  11

Validate Times
    Login With Valid Credintials
    Wait Until Element Is Visible               ${HISTORY_BUTTON}
    Click Element                               ${BUTTON5}
    Wait Until Element Is Visible               ${MULTI_BUTTON}
    Click Element                               ${MULTI_BUTTON}
    Click Element                               ${BUTTON6}
    Click Element                               ${EQUAL_BUTTON}
    Element Should Contain Text                 ${RESULT}                   30

Validate Clear
    Login With Valid Credintials
    Wait Until Element Is Visible               ${HISTORY_BUTTON}
    Click Element                               ${BUTTON5}
    Wait Until Element Is Visible               ${MULTI_BUTTON}
    Click Element                               ${MULTI_BUTTON}
    Click Element                               ${BUTTON6}
    Click Element                               ${EQUAL_BUTTON}
    Click Element                               ${CLEAR_BUTTON}
    Element Should Not Contain Text             ${RESULT}                   31
Validate History Button
    Login With Valid Credintials
    Wait Until Element Is Visible               ${HISTORY_BUTTON}
    Click Element                               ${HISTORY_BUTTON}
    Wait Until Element Is Visible               ${DELETE_BUTTON}
    Page Should Contain Element                 ${DELETE_BUTTON}


Validate DELETE Button
    Login With Valid Credintials
    Addition Transaction
    Times Transaction
    Click Element                                           ${HISTORY_BUTTON}
    Wait Until Element Is Visible                           ${DELETE_BUTTON}
    Click Element                                           ${FIRST_CHECKBOX}
    Click Element                                           ${SECOND_CHECKBOX}
    Click Element                                           ${DELETE_BUTTON}
    Page Should Not Contain Element                         ${HISTORY_SCREEN}

Addition Transaction
    Wait Until Element Is Visible                            ${BUTTON5}
    Click Element                                            ${BUTTON5}
    Wait Until Element Is Visible                            ${PLUS_BUTTON}
    Click Element                                            ${PLUS_BUTTON}
    Click Element                                            ${BUTTON6}
    Click Element                                            ${EQUAL_BUTTON}


Times Transaction
    Click Element                                           ${BUTTON5}
    Wait Until Element Is Visible                           ${MULTI_BUTTON}
    Click Element                                           ${MULTI_BUTTON}
    Click Element                                           ${BUTTON6}
    Click Element                                           ${EQUAL_BUTTON}
