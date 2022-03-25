# DDPR
Template Docker + Django + PostgreSQL + React setup for web application development.

# How to run.
```cd src && docker-compose up -d --build``` this will run all the stuff for the project in production mode, if you want to use *development* mode, update `$DEVELOPMENT` variable inside `.env` files inside frontend/backend.


# What's inside?
## Docker.
Django and PostgreSQL database located inside Docker containers and running under Docker-Compose.
## Django.
Default Django setup for REST API with `requirements.txt` (Django-REST, PostgreSQL, Gunicorn server) and settings from env via Docker-Compose
## PostgreSQL.
Simple PostgreSQL database.
## React.
React setup (`create-react-app`) with building via `npm run build` which is served using `server` (you may use Nginx on your production server).
