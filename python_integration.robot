*** Settings ***
Library    MyLib.py

*** Test Cases ***
Test funkcji python greet
    ${MSG}=    Greet    Tomek
    Should Be Equal    ${MSG}    Hello, Tomek!

*** Test Cases ***
Test funkcji dodawania
    ${DODAWANIE}=    add    2    3
    Should Be Equal As Integers    ${DODAWANIE}    5

Python inpile Sample
    ${LISTA}=    Evaluate    [x*x for x in range(5)]
    Log    ${LISTA}    #powinno pokazac [0, 1, 4, 9, 16]

    ${DICT}=    Evaluate    {"a" : 1, "b": 2, "c": 3}
    Log    ${DICT}    #powinno pokazac {'a': 1, 'b': 2, 'c': 3}

    ${RANDOM_mod}=    Evaluate    random.randint(1, 10)