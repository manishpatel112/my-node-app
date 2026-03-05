#!/bin/bash
set -e
# Stop anything listening on port 3000 (if any)
if lsof -i:3000 -t >/dev/null 2>&1; then
  echo "Stopping process on port 3000..."
  fuser -k 3000/tcp || true
fi
