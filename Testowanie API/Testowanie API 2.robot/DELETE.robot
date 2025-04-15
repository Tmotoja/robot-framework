*** Settings ***
Documentation    Testowanie funkcji DELETE
Library    RequestsLibrary
Library    Collections

*** Test Cases ***
Usuwanie istniejacego posta (DELETE)
    [Documentation]    wysyla DELETE aby usunac post i sprawdzic odpowiedz
    ${response}=    DELETE    https://jsonplaceholder.typicode.com/posts/1
    Should Be Equal As Integers    ${response.status_code}    200
    Should Be Equal    ${response.text}    {}
    Log    Post zostal usuniety