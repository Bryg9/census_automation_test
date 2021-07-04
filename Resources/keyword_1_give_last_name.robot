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

Klikniecie w przycisk Dalej
   Click element   ${selector_button_next}
   Sleep   3

Sprawdzenie czy pojawil sie komunikat przypominajacy o podaniu nazwiska
   Page Should Contain   Nazwisko jest wymagane.
   Sleep   3

Zamkniecie przegladarki
   Close All browsers