# Klikniecie w przycisk Wejscie
selector_button_login = 'xpath://*[@class="v-btn__content"]/span[text()="Wejście"]'
# Klikniecie w przycisk Dalej
selector_button_next = 'xpath://span[@class="nav-btn-text-right" and text()="Dalej"]'
# Wpisanie nazwiska
selector_last_name = 'xpath://label[text()="Nazwisko"]/../input'
# Wpisanie imienia
selector_name = 'xpath://label[text()="Imię"]/../input'
# Wpisanie drugiego imienia
selector_middle_name = 'xpath://label[text()="Drugie imię"]/../input'
# Wybranie prawidlowego numeru PESEL z listy
selector_pesel = 'xpath://label[text()="Numer PESEL"]/../input'
selector_next_visible_element = 'xpath://div[text()="mężczyzna"]'
selector_clear = 'xpath://label[text()="Numer PESEL"]/ancestor::div[@class="v-text-field__slot"]/../div[@class="v-input__append-inner"]//button'
# Wybierz plec
selector_male_radiobutton = 'xpath://div[text()="mężczyzna"]'
selector_female_radiobutton = 'xpath://div[text()="kobieta"]'
# Podaj date urodzenia
date_birth_input_box = 'xpath://div[@class="v-text-field__slot"]//input[@min="1900-01-01" and @max="2003-03-31"]'
# Sprawdz czy postep jest rowny 100
selector_progress = 'xpath://div[@class="v-progress-circular__info"]'


