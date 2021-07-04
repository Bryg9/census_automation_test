*** Settings ***
Metadata   Author   Brygida Juszczak
Library   SeleniumLibrary
Resource   ../Resources/keyword_1_give_last_name.robot

*** Variables ***
${BROWSER}   Chrome
${PAGE URL}   https://demo.spis.gov.pl/#/login?redirect=%2Fobligations

*** Test Cases ***
Test sprawdzajacy czy uzytkownik podal nazwisko
   Otwarcie przegladarki   ${BROWSER}
   Przejscie do strony demo spisu powszechnego   ${PAGE URL}
   Klikniecie w przycisk Wejscie
   Klikniecie w przycisk Dalej
   Sprawdzenie czy pojawil sie komunikat przypominajacy o podaniu nazwiska
   Zamkniecie przegladarki