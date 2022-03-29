#!/bin/bash

export $(cat .env | xargs)

if [ $DEVELOPMENT == "true" ];
then 
    echo "[start_frontend.sh] Starting development server..."
    npm start
else 
    echo "[start_frontend.sh] Starting production server..."

    echo "[start_frontend.sh][0|1] Install serve module..."
    npm install -g serve

    echo "[start_frontend.sh][1|1] Running server for build..."
    npx serve -s build
fi