# tests/TestSuite.robot
# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Variables  ../resources/CommonVariables.py
Library   Collections
Library   JSONLibrary
Variables    VariableFile.py


*** Test Cases ***
TC_GetAnnouncements_08
    [Documentation]  To verify that the Trello API endpoint correctly returns the latest announcements and relevant information.  
    ${url}=  Set Variable  https://trello.com/announcements
    ${response}=  Make API Request  GET  ${url}  ${HEADERS}
    Log  ${response}
    Should Be True  ${response} != {}

