# DDPR frontend.
This directory contains frontend React application (`create-react-app`).

### Running.
To start development server on your local machine (with auto reloading): ```npm start```

### Deploying production.
Build project in to the static folder `build/`: ```npm run build``` and then serve using static server (`npm install -g serve` + `serve -s build`) or Nginx on your production server.

### Config.
Config values should be changed under `.env` file!