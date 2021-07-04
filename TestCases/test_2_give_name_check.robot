*** Settings ***
Metadata   Author   Brygida Juszczak
Library   SeleniumLibrary
Resource   ../Resources/keyword_2_give_name.robot

*** Variables ***
${BROWSER}   Chrome
${PAGE URL}   https://demo.spis.gov.pl/#/login?redirect=%2Fobligations
${LAST NAME}   Nowak

*** Test Cases ***
Test sprawdzajacy czy uzytkownik podal imie
   Otwarcie przegladarki   ${BROWSER}
   Przejscie do strony demo spisu powszechnego   ${PAGE URL}
   Klikniecie w przycisk Wejscie
   Wpisanie nazwiska   ${LAST NAME}
   Klikniecie w przycisk Dalej
   Sprawdzenie czy pojawil sie komunikat przypominajacy o podaniu imienia
   Zamkniecie przegladarki