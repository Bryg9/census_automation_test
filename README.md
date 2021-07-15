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
#### By using Chocolatey:
* Get the right click on Windows Powershell (click start and type "powershell") and choose “Run as Administrator“, then paste command:
```
    > Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
* After success installation of Chocolatey, reopen PowerShell window, and install Python 3.8:
```
    > choco install python --version 3.8.0

    # note that you should add Python into sys PATH, check if python version appears by executing command:
    > python --version

    # if not, look here:
    https://datatofish.com/add-python-to-windows-path/ and add python into PATH manually
```
* Install Chrome manually from website, or use PowerShell command:
```
    > choco install googlechrome
```
* Add proper chromedriver into sys PATH like [here](https://zwbetz.com/download-chromedriver-binary-and-add-to-your-path-for-automated-functional-testing/)
* Fork and clone project into directory on your machine, you can use Git Bash command:
```
    # if you don't have installed git, use command:
    > choco install git

    # if you have installed git then clone repository from your github, after forking repo.
    # Open Git Bash:
    $ git clone https://github.com/<YOUR_GITHUB_USER_NAME>/census_automation_test.git
```
* Install all required libraries from cloned project, using pip command in PowerShell:
```
    > pip install -r requirements.txt
```
* After all before steps, you can run tests in project dir, by using commands:
```
  > "robot TestCases/test_1_give_last_name_check.robot"
  > "robot TestCases/test_2_give_name_check.robot"
  > "robot TestCases/test_3_give_pesel_number_from_list_check.robot"
  > "robot TestCases/test_4_choose_gender_check_alert.robot"
  > "robot TestCases/test_5_input_birth_date_from_pesel_go_to_next_page.robot"

  # or by one command:
  > robot TestCases/*.robot
```
#### By using PyCharm:
After installing PyCharm IDE you should have done all steps above, except installing pip install -r requirements.txt  
because it's possible to install those frameworks manually from PyCharm.  
To do that, choose in PyCharm: File > Settings > Python Interpreter > select plus '+' icon > type selenium and install.  
Install the others libraries this way: robotframework and robotframework-seleniumlibrary.  
Run tests in PyCharm terminal window:
```
  > "robot TestCases/test_1_give_last_name_check.robot"
  > "robot TestCases/test_2_give_name_check.robot"
  > "robot TestCases/test_3_give_pesel_number_from_list_check.robot"
  > "robot TestCases/test_4_choose_gender_check_alert.robot"
  > "robot TestCases/test_5_input_birth_date_from_pesel_go_to_next_page.robot"

  # or by one command:
  > robot TestCases/*.robot
```
If you prefer, you can create virtual environment (.venv) in PyCharm with using existing python interpreter, and  
install in (.venv) all frameworks like above as well.
