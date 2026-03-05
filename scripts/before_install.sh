#!/bin/bash
set -e

# Ensure Node is present (Amazon Linux 2 example)
if ! command -v node >/dev/null 2>&1; then
  curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
  yum install -y nodejs
fi

mkdir -p /var/www/html
