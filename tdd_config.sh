
# create dev folder 
mkdir C:\Data-tech\Velvet\optimization-engine\tdd-tuto

# Go to dev folder
cd C:\Data-tech\Velvet\optimization-engine\tdd-tuto

# download and install python 3.5 from https://www.python.org/downloads/release/python-350/

# download and install git from https://git-scm.com/download/win

# download  and install Firefox from https://www.mozilla.org/fr/firefox

# download Geckodriver from https://github.com/mozilla/geckodriver/releases

# unpack geckodriver file and copy it in dev folder

# check geckodriver
geckodriver --version

# install virtualenv for python3
C:\Python35\python -m pip install --upgrade virtualenv 

# create virtualenv
virtualenv tdd-env -p C:\Python35\python.exe

# active virtual env
tdd-env\Scripts\activate

# install packages
pip install Django==1.11.0
pip install djangorestframework==2.3.14
pip install Selenium==3.9.0

# Create functional_test.py file
copy Nul functional_test.py 

# create django project
django-admin.py startproject superlist .

# run Django server
python manage.py runserver 0.0.0.0:8000

# Add the folowing contents into functional_test file
from selenium import webdriver

browser = webdriver.Firefox()
browser.get('http://localhost:8000')

assert 'Django' in browser.title

# run test
python functional_test.py

# Starting git repository
git init .

# create .gitingore file
copy Nul .gitignore

# Set git ignore file
echo db.sqlite3 >> .gitignore
echo geckodriver.log >> .gitignore
echo tdd-env >> .gitignore

# Add files
git add .

# check git status
git status



