#https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/

#Create python ENV
python3 -m venv env

#Activate ENV
source env/bin/activate

#DEACTIVATE ENV
deactivate

#PIP FREEZE - "SETUP INSTRUCTIONS FOR NEW ENV"
pip freeze > requirements.txt

#INSTALL DEPENDENCIES FROM requirements.txt
pip install -r requirements.txt
