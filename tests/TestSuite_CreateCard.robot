# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Resource  ../resources/CommonVariables.robot
Library   Collections
Library   JSONLibrary
Variables    VariableFile.py

*** Test Cases ***
Test POST Endpoint
    ${url}=  Set Variable  https://trello.com/1/cards
    ${payload}=  Create Dictionary  name=New Board  defaultLabels=true  defaultLists=true  keepFromSource=none  prefs_permissionLevel=private
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${NEW_CARD_PAYLOAD_WITHOUT_NAME}
    Log  ${response}
    Should Be True  ${response} != {}

