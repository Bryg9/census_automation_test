*** Settings ***
Library   SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Otwarcie przegladarki
   [Arguments]   ${browser}
   Open browser   about:blank   ${browser}
   Maximize Browser Window

Przejscie do strony demo spisu powszechnego
   [Arguments]   ${page url}
   Go to   ${page url}
   Title should be   NSP 1.1.4

Klikniecie w przycisk Wejscie
   Click element   ${selector_button_login}
   Sleep   3

Wpisanie nazwiska
   [Arguments]   ${last name}
   Input text   ${selector_last_name}   ${last name}
   Sleep   3

Klikniecie w przycisk Dalej
   Press Keys   xpath=//body   \ue00f
   Sleep   3
   Click element   ${selector_button_next}
   Sleep   3

Sprawdzenie czy pojawil sie komunikat przypominajacy o podaniu imienia
   Page Should Contain   Imię jest wymagane.
   Sleep   3

Zamkniecie przegladarki
   Close All browsers
