# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Variables  ../resources/CommonVariables.py
Library   Collections
Library   JSONLibrary
Variables    VariableFile.py


*** Test Cases ***
TC_AddComment_09
    [Documentation]  To verify that user is able to add comment to a card
    ${url}=  Set Variable  https://trello.com/1/cards/667b0d6545c914f2ec9c8eca/actions/comments
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_COMMENT}
    Log  ${response}
    Should Be True  ${response} != {}



