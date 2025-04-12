#Poćwicz użycie zmiennych. Zdefiniuj w sekcji Variables zmienną USER
#  z wartością Twojego imienia. Napisz test który wykorzysta tę zmienną 
# (np. wypisze komunikat z imieniem / sprawdzi jakąś właściwość stringa)

*** Keywords ***
Przywitanie
...    log    Witaj uzytkowniku
...    

*** Variables ***
${USER}    Tomek

*** Test Cases ***
Test przywitanie
    Log    Uzytkownik: ${USER}
    Should Be Equal   ${USER}    Tomek