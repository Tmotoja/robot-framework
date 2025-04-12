*** Settings ***
Documentation    Test sprawdzający długość tekstu

*** Test Cases ***
String Length Test
    [Documentation]    Testujemy długość tekstu
    ${text}=    Set Variable    Hello World!!!    # ustawiamy zmienną tekstową
    ${length}=    Evaluate    len("${text}")    # obliczamy długość tekstu
    Should Be Equal As Numbers    ${length}    14    # sprawdzamy czy długość tekstu jest równa 13