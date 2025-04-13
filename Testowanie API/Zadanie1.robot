*** Settings ***
Documentation    checking two elements
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Sprawdzanie dwoch elementow
    [Documentation]    Przykład GET na API
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    Get Request    jsonplaceholder    /posts/1
    ${headers}=    Set Variable    ${response.headers}
    Should Be Equal    ${headers['Content-Type']}    application/json; charset=utf-8
    Should Be Equal    ${headers['Transfer-Encoding']}    chunked

Sprawdzanie czy zawiera dany kontent
    [Documentation]    Przykład GET na API
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    Get Request    jsonplaceholder    /posts/1
    ${body}=    To JSON    ${response.text}    # Parsujemy odpowiedź JSON
    Should Contain    ${body['title']}    sunt aut facere repellat provident occaecati excepturi optio reprehenderit

Sprawdzanie czy json nie zawiera pustego pola
    [Documentation]    Przykład GET na API
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    ${response}=    Get Request    jsonplaceholder    /posts/1
    ${body}=    To JSON    ${response.text}    # Parsujemy odpowiedź JSON
    Should Contain    ${body}    title