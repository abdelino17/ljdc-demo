#!/bin/bash -x

sudo apt-get update

sudo apt-get install -y git python3 python3-pip pipenv

sudo mkdir -p /var/www/python-api &&
  sudo git clone https://github.com/abdelino17/python-api.git /var/www/python-api/ &&
  cd /var/www/python-api/

PIPENV_VENV_IN_PROJECT=1 pipenv install && pipenv run python app.py
