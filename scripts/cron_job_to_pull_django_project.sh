#!/bin/bash
# Target: This script can be used as a cron job for Django application deployed on Gunicorn/Nginx.
# Description: Pulls the latest code from github from the specified branch. Second, installs any requirements. Third makes migrations and last restart the server for changes to go live.
echo "Job Started"
cd project_directory

echo "Pull Started"
git pull https://username:github_personal_access_token@github.com/project_url/project_name.git branch_name


echo "Installing project requirements"
./venv/bin/python4.0 -m pip install -r requirements.txt

echo "Running database migrations"
./venv/bin/python4.0 manage.py makemigrations
./venv/bin/python4.0 manage.py migrate

echo "Restarting the server."
sudo service gunicorn restart
sudo service nginx restart
