# DDPR source code.

### How to run.
```docker-compose up -d --build backend``` will run database and Django inside Docker. For frontend you may use `docker-compose up -d --build frontend` which builds frontend application (via `npm run build`), which you may start (serve) via Nginx on your production server, or `serve` npm package (`npm install -g serve` + `serve -s build`).

# Database.
Database data located inside `database_data` directory.

### Change docker compose name.
Just change `COMPOSE_PROJECT_NAME` in `.env`