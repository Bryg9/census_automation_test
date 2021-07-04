*** Settings ***
Metadata   Author   Brygida Juszczak
Library   SeleniumLibrary
Resource   ../Resources/keyword_4_choose_gender.robot

*** Variables ***
${BROWSER}   Chrome
${PAGE URL}   https://demo.spis.gov.pl/#/login?redirect=%2Fobligations
${LAST NAME}   Nowak
${NAME}   Jan
${MIDDLE NAME}   Marian
@{PESEL}   01210214625   75122663915   75052275773   66093085325
${SPACE}
${RADIO BUTTON}   Osoba${SPACE}to${SPACE}mężczyzna

*** Test Cases ***
Test wybierający plec na podstawie prawidłowego numeru PESEL
   Otwarcie przegladarki   ${BROWSER}
   Przejscie do strony demo spisu powszechnego   ${PAGE URL}
   Klikniecie w przycisk Wejscie
   Wpisanie nazwiska   ${LAST NAME}
   Wpisanie imienia   ${NAME}
   Wpisanie drugiego imienia   ${MIDDLE NAME}
   ${ACTUAL PESEL VALUE} =   Wybranie prawidlowego numeru PESEL z listy   @{PESEL}
   Wybierz plec   ${ACTUAL PESEL VALUE}   ${RADIO BUTTON}
   Klikniecie w przycisk Dalej
   Sprawdzenie czy pojawil sie komunikat przypominajacy o podaniu daty urodzenia
   Zamkniecie przegladarki