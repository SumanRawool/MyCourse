#!/bin/bash
source venv/bin/activate
cd /var/lib/jenkins/workspace/django-cicd

python3 manage.py makemigrations
python3 manage.py migrate

echo "migration done"

sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/

echo "$USR"
echo "$Pwd"

sudo systemctl daemon-reload
sudo systemctl start gunicorn

echo "Gunicorn has started."

sudo systemctl enable gunicorn

echo "Gunicorn has been enabled."

sudo systemctl restart gunicorn


sudo systemctl status gunicorn