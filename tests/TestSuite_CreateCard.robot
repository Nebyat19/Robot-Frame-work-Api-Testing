# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Variables  ../resources/CommonVariables.py
Library   Collections
Library   JSONLibrary
Variables    VariableFile.py

*** Test Cases ***
TC_Create_Card_06
    [Documentation]    Verify that a card can be created successfully with a valid name
    [Tags]    CreateCard
    ${url}=  Set Variable  https://trello.com/1/cards
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_CARD_PAYLOAD_WITH_NAME}
    Should Be Equal As Numbers    ${response['status_code']}    200
    Log    ${response}

TC_Create_Card_07
    [Documentation]    This test verifies that a card cannot be created on a deleted board.
    [Tags]    CreateCard
    ${url}=  Set Variable  https://trello.com/1/cards
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_CARD_PAYLOAD_WITHOUT_ID}
    Should Not Be Equal As Numbers    ${response['status_code']}    200
    Log    ${response}  

