#!/bin/bash
set -e
# Give app a second to start
sleep 2
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000/)
if [ "$STATUS" -ge 200 ] && [ "$STATUS" -lt 400 ]; then
  echo "Health check passed ($STATUS)"
  exit 0
else
  echo "Health check failed ($STATUS)"
  exit 1
fi
