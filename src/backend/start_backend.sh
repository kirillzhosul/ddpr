#!/bin/bash

export $(cat backend.env | xargs)

if [ $DEVELOPMENT == "true" ];
then 
    echo "[start_backend.sh] Starting development server..."
    python manage.py runserver 0.0.0.0:8000
else 
    echo "[start_backend.sh] Starting production server..."
    gunicorn --bind 0.0.0.0:8000 ddpr.wsgi
fi