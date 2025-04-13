*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Filtracja komentarzy po postID
    [Documentation]    sprawdzanie czy GET zwraca komentarze powieazane z postID 1
    ${response}=    GET    https://jsonplaceholder.typicode.com/comments    params=postId=1
    Should Be Equal As Integers    ${response.status_code}    200
    ${comments}=    To JSON    ${response.text}
    ${count}=    Get Length    ${comments}
    Log    ${count}
    Should Be Equal As Integers    ${count}    5
    FOR    ${comment}    IN    @{comments}
        Should Be Equal As Integers    ${comment}[postId]    1
    END
        