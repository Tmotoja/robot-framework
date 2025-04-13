*** Settings ***
Documentation    Wkorzystanie Create Session
Library    RequestsLibrary

*** Test Cases ***
Test z uzyciem Create session
    [Documentation]    Test z create Session
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    Get Request    jsonplaceholder    /posts/1
    Should Be Equal As Integers    ${response.status_code}    200
    

