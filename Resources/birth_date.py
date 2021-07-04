def test_input_birth_date(pesel_number):
    if int(pesel_number[2]) < 2:
        return pesel_number[4:6] + pesel_number[2:4] + '19' + pesel_number[0:2]
    else:
        return pesel_number[4:6] + pesel_number[2:4] + '20' + pesel_number[0:2]