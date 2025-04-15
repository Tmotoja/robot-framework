*** Settings ***
Documentation    Testujemy dane uzytkownika o id 5
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Dane uzytkownika Id:5
    [Documentation]   wysyla GET aby pobrac dane uzytkownika o id 5 i sprawdzic odpowiedz
    ${response}=    GET    https://jsonplaceholder.typicode.com/users/5
    ${dane}=    Set Variable    ${response.json()}
    ${address}=    Set Variable    ${dane}[address]
    Should Be Equal As Strings    ${dane}[id]    5
    Should Be Equal As Strings    ${dane}[name]    Chelsey Dietrich
    Should Be Equal As Strings    ${dane}[username]    Kamren
    Should Be Equal As Strings    ${address}[zipcode]    33263