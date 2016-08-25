#!/bin/bash

echo "[production-mode] Running Starter KIT"
PORT=3000 NODE_ENV=production ./bin/www -e coffee
