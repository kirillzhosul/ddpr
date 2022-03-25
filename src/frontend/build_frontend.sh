#!/bin/bash

function install_dependencies(){
    # Install dependencies.
    echo "[build_frontend.sh][0|3] Installing dependencies (Updating NPM)..."
    npm install npm@latest -g --silent
    echo "[build_frontend.sh][1|3] Installing more dependencies (Actually installing packages from requirements)..."
    npm install --silent
    echo "[build_frontend.sh][2|3] Installing even more dependencies (Installing react scripts)..."
    npm install react-scripts@3.4.1 -g --silents
}

export $(cat .env | xargs)

if [ $FRONTEND_BUILD_ON_BUILD == "true" ];
then 
    echo "[build_frontend.sh] Building production frontend..."

    install_dependencies

    # Build project.
    echo "[build_frontend.sh] Bulding project..."
    npm run build
    exit 0
else 
    echo "[build_frontend.sh] Frontend production building disabled, skipping to installing base dependecies."
    if [ -d "node_modules" ]; 
    then
        echo "[build_frontend.sh] Node modules already exists, skipping base modules installing."
        exit 0
    else
        echo "[build_frontend.sh] Node modules does not exists, installing base modules..."
        install_dependencies
        exit 0
    fi
fi