#!/bin/sh

pip install psycopg2-binary
pip install pymongo
pip install pymysql
pip install rx

sudo apt-get install gcc -y
pip3 install sanic
pip3 install sanic_cors
pip install graphviz

sudo apt-get install python-setuptools -y
sudo apt-get install python3-setuptools -y
# pip install pyearth

pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org autopep8

sudo apt install python-pydot python-pydot-ng graphviz