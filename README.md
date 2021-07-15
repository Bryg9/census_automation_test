# Automation test project of national census website
### About project
The project includes automation tests of the national census **demo** website:
[<img src="https://spis.gov.pl/wp-content/uploads/2021/01/cropped-logo-nsp.png" class="custom-logo" alt="Logo Głównego Urzędu Statystycznego, napis Narodowy Spis Powszechny Ludności i Mieszkań 2021, kolor" srcset="https://spis.gov.pl/wp-content/uploads/2021/01/cropped-logo-nsp.png 1789w, https://spis.gov.pl/wp-content/uploads/2021/01/cropped-logo-nsp-300x50.png 300w, https://spis.gov.pl/wp-content/uploads/2021/01/cropped-logo-nsp-1024x170.png 1024w, https://spis.gov.pl/wp-content/uploads/2021/01/cropped-logo-nsp-768x127.png 768w, https://spis.gov.pl/wp-content/uploads/2021/01/cropped-logo-nsp-1536x255.png 1536w" sizes="(max-width: 1789px) 100vw, 1789px" width="180" height="27">](https://demo.spis.gov.pl/)

The structure of the project was created with using **Robot Framework**, and according to **Page Object Model**.

* Tests are running on **Travis CI**:
[![Travis (.com)](https://img.shields.io/travis/com/Bryg9/census_automation_test?logo=travis&style=for-the-badge)](https://www.travis-ci.com/Bryg9/census_automation_test)
  
* The test recording is available here: [![YT](https://img.shields.io/badge/You_Tube-NSP_1.1.4_recording-inactive?style=flat&logo=youtube&logoColor=red)](https://www.youtube.com/watch?v=eEdWghdfR_A)

* Environments and automation tools used on local machine: 

Environment and automation tools | Version
:------------ | :-------------:
Python | [![Python 3.8](https://img.shields.io/badge/Python-3.8-inactive?style=flat-square&logo=python&logoColor=white)](https://www.python.org/downloads/release/python-380/)
Pip | [![pip](https://img.shields.io/badge/pypi-v20.1.1-inactive?style=flat-square&logo=python&logoColor=white)](https://pypi.org/project/pip/20.1.1/)
Windows | ![Windows](https://img.shields.io/badge/Windows-10-inactive?style=flat&logo=windows)
PyCharm IDE | ![PyCharm](https://img.shields.io/badge/PyCharm-2020.2.3-inactive?style=flat-square&logo=pycharm&logoColor=white)
Chrome | [![Chrome](https://img.shields.io/badge/Chrome-91.0.4472.124-inactive?style=flat-square&logo=googlechrome&logoColor=white)](https://chromereleases.googleblog.com/2021/06/stable-channel-update-for-desktop_24.html)
Chromedriver | [![chromedriver](https://img.shields.io/badge/chromedriver-91.0.4472.101-inactive?style=flat-square&logo=googlechrome&logoColor=white)](https://chromedriver.storage.googleapis.com/index.html?path=91.0.4472.101/)
Selenium | [![Selenium](https://img.shields.io/badge/Selenium-3.141.0-inactive?style=flat-square&logo=selenium&logoColor=white)](https://pypi.org/project/selenium/)
Robot Framework | [![Robot framework](https://img.shields.io/badge/Robof_Framework-4.0.1-inactive?style=flat-square&logo=robotframework&logoColor=white)](https://github.com/robotframework/robotframework/releases/tag/v4.0.1)
Robot framework - selenium library | ![rf seleniumlibrary](https://img.shields.io/badge/robotframework--seleniumlibrary-5.1.3-inactive?style=flat-square&logo=robotframework&logoColor=white)

### Short description
Test cases mainly concern at the first page of census form.  
Except filling form fields, like last name or name, script takes PESEL number from list  
(only one PESEL number from list is correct, because of its last check digit), and breaks  
the loop action, when will find first proper PESEL number.


Additionally, after selecting correct PESEL number,  
the script checks whether the person is a woman / a man, and selects the appropriate radiobutton.  
The script also determines the date of birth based on the PESEL number, and returns it
in the date birth input box. 


Tests also check if is possible to go to the next page, without completing
mandatory fields, and what alerts will appear  
on the website, when the form is incorrectly completed. 

### How to run this project on Windows 10
