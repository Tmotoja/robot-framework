*** Settings ***
Documentation    test metody post
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Test post
    [Documentation]    Test wysyla POST do API tworzac nowy wpis i weryfikujac odpowidzec
    ${body}=    Create Dictionary    title=Testowy post    body=to jest jego tresc    userId=1
    ${response}=    POST    https://jsonplaceholder.typicode.com/posts    json=${body}
    ${response_body}=    To JSON    ${response.text}
    Should Be Equal As Integers    ${response.status_code}    201
    Should Be Equal As Strings    ${response_body}[title]    Testowy post
    Should Be Equal As Strings    ${response_body}[body]    to jest jego tresc
    Should Be Equal As Integers    ${response_body}[userId]    1
    Dictionary Should Contain Key    ${response_body}    id