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

Wpisanie imienia
   [Arguments]   ${name}
   Input text   ${selector_name}   ${name}
   Sleep   3

Wpisanie drugiego imienia
   [Arguments]   ${middle name}
   Input text   ${selector_middle_name}   ${middle name}
   Sleep   3

Wybranie prawidlowego numeru PESEL z listy
   [Arguments]   @{pesel}
   Press Keys   xpath=//body   \ue00f
   Sleep   3
   FOR  ${i}  IN   @{pesel}
      Click Element   ${selector_pesel}
      Input text   ${selector_pesel}   ${i}
      Sleep   3
      ${element_is_here} =  Run Keyword and return status  Page should contain element  ${selector_next_visible_element}
      Exit For Loop If  ${element_is_here}
      Sleep   3
      Click element   ${selector_button_next}
      Sleep   3
      Page should contain   Niepoprawny numer PESEL.
      Click Element  ${selector_clear}
   END
   Sleep   3

Klikniecie w przycisk Dalej
   Press Keys   xpath=//body   \ue00f
   Sleep   3
   Click element   ${selector_button_next}
   Sleep   3

Sprawdzenie czy pojawil sie komunikat przypominajacy o wybraniu plci
   Page Should Contain   Płeć jest wymagana.
   Sleep   3

Zamkniecie przegladarki
   Close All browsers