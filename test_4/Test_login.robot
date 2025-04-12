*** Settings ***
Documentation    Test logowania do strony 
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://the-internet.herokuapp.com/login
${BROWSER}    Chrome
${VALID_LOGIN}    tomsmith
${VALID_PASSWORD}    SuperSecretPassword!
${INVALID_LOGIN}    invalid_user
${INVALID_PASSWORD}    invalid_password

*** Test Cases ***
Udane Logowanie
    [Documentation]    Test sprawdzający udane logowanie
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Wait Until Element Is Visible    id=username   5s
    Input Text    id=username    ${VALID_LOGIN}
    Input Text    id=password    ${VALID_PASSWORD}
    Click Element    css=.radius
    Element Should Be Visible    id:flash
    Close Browser

*** Test Cases ***
Nieudane Logowanie
    [Documentation]    Niepoprawne logowanie test
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Wait Until Element Is Visible    id=username   5s
    Input Text    id=username    ${INVALID_LOGIN}
    Input Text    id=password    ${INVALID_PASSWORD}
    Click Element    css=.radius
    Element Should Be Visible    css=.flash.error
    Close Browser

*** Test Cases ***
Udane Wylogowanie
    [Documentation]    Test sprawdzający udane wylogowanie
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Wait Until Element Is Visible    id=username   5s
    Input Text    id=username    ${VALID_LOGIN}
    Input Text    id=password    ${VALID_PASSWORD}
    Click Element    css=.radius
    Element Should Be Visible    id:flash
    Click Element    locator= css=.icon-2x.icon-signout
    Page Should Contain    You logged out of the secure area!
    Close Browser