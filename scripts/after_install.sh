#!/bin/bash
set -e
cd /var/www/html

# Ensure scripts are executable
chmod +x scripts/*.sh

# Install dependencies for runtime
npm ci || npm install
