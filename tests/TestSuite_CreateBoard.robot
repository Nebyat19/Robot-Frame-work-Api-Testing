# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Resource  ../resources/CommonVariables.robot
Library   Collections
Library   JSONLibrary
Variables    VariableFile.py

*** Test Cases ***
TC_Create_Board_01
    [Documentation]    Verify that a board can be created with a valid name.
    [Tags]    CreateBoard
    ${url}=  Set Variable  https://trello.com/1/boards
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_BOARD_PAYLOAD_WITH_NAME}
    Should Be Equal As Numbers    ${response['status_code']}    200
    Log    ${response}


TC_Create_Board_02
    [Documentation]    Verify that creating a board without a name returns an appropriate error message.
    [Tags]    CreateBoard
    ${url}=  Set Variable  https://trello.com/1/boards
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_BOARD_PAYLOAD_WITHOUT_NAME}
    Should Not Be Equal As Numbers    ${response['status_code']}    200
    Log    ${response}

TC_Create_Board_03
    [Documentation]    Verify that creating a board without  the same name will not work.
    [Tags]    CreateBoard
    ${url}=  Set Variable  https://trello.com/1/boards
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_BOARD_PAYLOAD_WITH_NAME}
    Should Not Be Equal As Numbers    ${response['status_code']}    200
    Log    ${response}

