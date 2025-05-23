*** Settings ***
Documentation    Pierwszy test API
Library    RequestsLibrary

*** Test Cases ***
Przykladowy GET na API
    [Documentation]    Przykład GET na API
    ${response}=    GET     https://jsonplaceholder.typicode.com/posts/1
    Should Be Equal As Integers    ${response.status_code}    200
    Log    ${response.text}    # Logujemy odpowiedź

*** Test Cases ***
Sprawdzanie zawartosci json
    [Documentation]    Przykład GET na API
    ${response}=    GET     https://jsonplaceholder.typicode.com/posts/1
    ${body}=    Evaluate    repr(${response.json()})
    Should Be Equal As Integers    ${body}[id]    1
    Should Be Equal As Integers    ${body}[userId]    1