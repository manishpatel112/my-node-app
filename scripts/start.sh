#!/bin/bash
cd /var/www/html
nohup node index.js > app.log 2>&1 &
``
