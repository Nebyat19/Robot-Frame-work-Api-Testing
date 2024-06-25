# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Library  Collections
Library  JSONLibrary
Resource  ../resources/CommonVariables.robot


*** Test Cases ***
Test GET Endpoint
    [Documentation]  This test case is used to retrieve all enabled plugins for a specific Trello board.
    ${url}=  Set Variable  https://trello.com/1/boards/6651e5876c90501fb526b92f/plugins?filter=enabled
    ${response}=  Make API Request  GET  ${url}  ${HEADERS}
    Log  ${response}
    Should Be True  ${response} != {}

Test POST Endpoint
    ${url}=  Set Variable  https://trello.com/1/boards
    ${payload}=  Create Dictionary  name=New Board  defaultLabels=true  defaultLists=true  keepFromSource=none  prefs_permissionLevel=private
    ${response}=  Make API Request  POST  ${url}  ${HEADERS}  ${payload}
    Log  ${response}
    Should Be True  ${response} != {}

Test PUT Endpoint
    ${url}=  Set Variable  https://trello.com/1/boards/6651e5876c90501fb526b92f
    ${payload}=  Create Dictionary  name=Updated Board Name
    ${response}=  Make API Request  PUT  ${url}  ${HEADERS}  ${payload}
    Log  ${response}
    Should Be True  ${response} != {}

Test DELETE Endpoint
    ${url}=  Set Variable  https://trello.com/1/boards/6651e5876c90501fb526b92f
    ${response}=  Make API Request  DELETE  ${url}  ${HEADERS}
    Log  ${response}
    Should Be True  ${response} != {}
