*** Settings ***
Documentation  przykladowy pierwszy test w robotframework

*** Test Cases ***
Hello world test
    Documentation   test sprawdza czy 2+§
    $(result)= Evaluate  2+2 # oblicz 2+2 i zapisz wynik do zmiennej
    Should Be Equal As Numbers  ${result}  4 # sprawdź czy wynik jest równy 4