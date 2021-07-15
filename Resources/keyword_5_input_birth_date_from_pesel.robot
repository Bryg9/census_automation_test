*** Settings ***
Library   SeleniumLibrary
Library   choose_gender.py
Library   birth_date.py
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

   ${for value pesel} =   Get value   ${selector_pesel}
   [Return]   ${for value pesel}
   Sleep   3

Wybierz plec
   [Arguments]   ${pesel number from page}   ${male radio button}
   ${result} =   test_choose_gender   ${pesel number from page}
   Log To Console   ${result}

   IF   '${result}' == '${male radio button}'
   Click element   ${selector_male_radiobutton}
   Sleep   3
   ELSE
   Click element   ${selector_female_radiobutton}
   Sleep   3
   END

Podaj date urodzenia
   [Arguments]   ${pesel number from page}
   ${result} =   test_input_birth_date   ${pesel number from page}
   Log To Console   ${result}
   Click element   ${date_birth_input_box}
   Sleep   3
   Input text   ${date_birth_input_box}   ${result}
   Sleep   3
   ${actual_text_from_birth_input_box} =   Get Element Attribute   ${date_birth_input_box}   value
   Sleep   3
   Log to console   ${actual_text_from_birth_input_box}
   Sleep   3

Sprawdz czy postep jest rowny 100
   Press Keys   xpath=//body   \ue00f
   Sleep   3
   ${progress} =   get text   ${selector_progress}
   Sleep   3
   Should be equal   ${progress}   100
   Sleep   3

Klikniecie w przycisk Dalej
   Press Keys   xpath=//body   \ue00f
   Sleep   3
   Click element   ${selector_button_next}
   Sleep   3

Sprawdzenie czy pomyslnie udało sie przejsc na kolejna strone formularza
   Page Should Contain   Ustalenie adresu zamieszkania osoby
   Sleep   3

Zamkniecie przegladarki
   Close All browsers