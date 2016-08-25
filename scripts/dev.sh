#!/bin/bash

echo "[development-mode] Running Starter KIT"
PORT=3000 NODE_ENV=development nodemon ./bin/www -e coffee
