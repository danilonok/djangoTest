#!/bin/bash

echo "Waiting for PostgreSQL"
while ! nc -z db 5432; do
  sleep 0.1
done
echo "PostgreSQL started"

echo "Applying database migrations"
python manage.py migrate
echo "Start the application"
python manage.py runserver 0.0.0.0:8000