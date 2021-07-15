*** Settings ***
Metadata   Author   Brygida Juszczak
Library   SeleniumLibrary
Resource   ../Resources/keyword_3_give_pesel_number_from_list.robot

*** Variables ***
${BROWSER}   Chrome
${PAGE URL}   https://demo.spis.gov.pl/#/login?redirect=%2Fobligations
${LAST NAME}   Nowak
${NAME}   Jan
${MIDDLE NAME}   Marian
@{PESEL}   01210214625   75122663915   75020216393   66093085325

*** Test Cases ***
Test sprawdzający poprawny numer pesel z listy
   Otwarcie przegladarki   ${BROWSER}
   Przejscie do strony demo spisu powszechnego   ${PAGE URL}
   Klikniecie w przycisk Wejscie
   Wpisanie nazwiska   ${LAST NAME}
   Wpisanie imienia   ${NAME}
   Wpisanie drugiego imienia   ${MIDDLE NAME}
   Wybranie prawidlowego numeru PESEL z listy   @{PESEL}
   Klikniecie w przycisk Dalej
   Sprawdzenie czy pojawil sie komunikat przypominajacy o wybraniu plci
   Zamkniecie przegladarki