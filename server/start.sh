#!/bin/bash

npm run build

npm list -g | grep pm2 || npm install -g pm2@4.4.0
pm2 stop jeevika-setu-server
pm2 start dist/main.js --name jeevika-setu-server
