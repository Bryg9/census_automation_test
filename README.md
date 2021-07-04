# Projekt testów automatycznych spisu powszechnego w wersji demo
Projekt zawiera testy automatyczne strony Narodowego Spisu Powszechnego w wersji demo
[NSP 1.1.4](https://demo.spis.gov.pl/)

Struktura projektu została utworzona zgodnie z wzorcem **Page Object Model**, przy użyciu narzędzia **Robot Framework**.

Środowisko i narzędzia do automatyzacji:  
* Windows 10
* PyCharm 2020.2.3
* Robot Framework 4.0.1
* Selenium 3.141.0
* Chrome webdriver 91.0.4472.101
* Chrome 91.0.4472.114

Przypadki testowe dotyczą głownie pierwszej strony formularza spisowego.  
Oprócz uzupełniania pól takich jak nazwisko lub imię, skrypt pobiera numer PESEL z listy  
(tylko jeden numer PESEL na liście jest poprawny, ze względu na cyfrę kontrolną) i przerywa  
działanie pętli, gdy znajdzie pierwszy prawidłowy numer.  


Dodatkowo na podstawie wybranego numeru PESEL, skrypt sprawdza czy osoba jest kobietą / mężczyzną  
i wybiera odpowiedni radiobutton. 
Skrypt ustala także datę urodzenia na podstawie numeru PESEL i zwraca  
właściwą w odpowiedni input box.  


Testy automatyczne sprawdzają również, czy jest możliwe przejście na następną stronę, bez uzupełnienia  
pól obowiązkowych oraz jakie alerty pojawiają się na stronie, gdy formularz jest nieprawidłowo uzupełniony. 
