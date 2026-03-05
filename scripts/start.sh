#!/bin/bash
set -e

APP_DIR="/var/www/html"
LOG_FILE="$APP_DIR/app.log"

# Kill anything already using port 3000 (safety)
fuser -k 3000/tcp || true

cd "$APP_DIR"

# Start in background and log output
nohup node index.js > "$LOG_FILE" 2>&1 &

echo "App started. Logs: $LOG_FILE"
