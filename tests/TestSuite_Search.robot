# tests/TestSuite.robot

*** Settings ***
Resource  ../resources/CommonKeywords.robot
Variables  ../resources/CommonVariables.py
Library   Collections
Library   JSONLibrary
Variables    VariableFile.py


*** Test Cases ***
TC_Search_10
    [Documentation]  Users can search on the platform based on keyword and username
    ${url}=  Set Variable  https://trello.com/1/search?query=@me&partial=true&modelTypes=boards,cards,members,organizations&board_fields=id,closed,dateLastActivity,dateLastView,idOrganization,name,prefs,shortLink,id,name&board_organization=true&board_organization_fields=id,displayName&card_fields=id,closed,dateLastActivity,desc,idBoard,name,shortLink,url&cards_limit=11&cards_page=0&card_board=true&card_list=true&member_fields=id,avatarUrl,fullName,initials,nonPublic,username&organization_fields=id,displayName,logoHash,name
    ${response}=  Make API Request  GET  ${url}  ${HEADERS}  
    Log  ${response}
    Should Be True  ${response} != {}



