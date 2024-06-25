# resources/CommonKeywords.robot

*** Settings ***
Library  ../library/CustomKeywords.py

*** Keywords ***
Make API Request
    [Arguments]  ${method}  ${url}  ${headers}  ${payload}=None
    ${response}=  Make Request  ${method}  ${url}  ${headers}  ${payload}
    [Return]  ${response}
