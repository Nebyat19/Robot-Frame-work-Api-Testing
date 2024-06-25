# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Variables  ../resources/CommonVariables.py
Library   Collections
Library   JSONLibrary
Variables    VariableFile.py

*** Test Cases ***
TC_Create_List_04
    [Documentation]   To verify that a new list can be successfully created on a specified Trello board 
    [Tags]    CreateList
    ${url}=  Set Variable  https://trello.com/1/lists
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_LIST_PAYLOAD_WITH_EXISTING_BOARD}
    Should Be Equal As Numbers    ${response['status_code']}    200
    Log    ${response}

TC_Create_List_05
    [Documentation]   To verify that a new list can be successfully created on a specified Trello board 
    [Tags]    CreateList
    ${url}=  Set Variable  https://trello.com/1/lists
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_LIST_PAYLOAD_WITH_FALSE_BOARD_ID}
    Should Be Equal As Numbers    ${response['status_code']}    400
    Log    ${response}  

