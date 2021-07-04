def test_choose_gender(value_g):
    if str(value_g)[-2] == '1' or '3' or '5' or '7' or '9':
        return 'Osoba to mężczyzna'
    else:
        return 'Osoba to kobieta'
