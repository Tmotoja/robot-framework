*** Settings ***
Documentation    Testowanie API PUT
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Aktualizacja istniejacego posta (PUT)
    [Documentation]    wysyla PUT aby zmienic tytul i sprawdzic odpowiedz
    ${update_data}=    Create Dictionary    id    1    title    Zmieniony tytul   body    Zmieniona tresc   userId    1
    ${response}=    PUT    https://jsonplaceholder.typicode.com/posts/1    json=${update_data}
    ${updated}=    Set Variable    ${response.json()}
    Should Be Equal    ${updated}[title]    Zmieniony tytul
    Should Be Equal    ${updated}[body]    Zmieniona tresc
    Should Be Equal As Integers    ${updated}[userId]    1
    Should Be Equal As Integers    ${updated}[id]    1
