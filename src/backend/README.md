# DDPR backend.
This directory contains backend Django project with simple API base.

### Running.
To start development server on your local machine (With auto reloading): ```python3 manage.py runserver 0.0.0.0:80000``` or update `$DEVELOPMENT` variable inside `/src/.env` and run docker-compose.

### Deploying production.
For production you may use gunicorn and/or NGINX on your server.
To run gunicorn on your local machine (Linux only) (Note: This is already called inside Docker backend service so port maybe already binded if you have `$DEVELOPMENT=false`):
```gunicorn --bind 0.0.0.0:8000 ddpr.wsgi```

### Config.
Config values should be changed under `/src/.env` and|or `/src/docker-compose.yml` file with environment!