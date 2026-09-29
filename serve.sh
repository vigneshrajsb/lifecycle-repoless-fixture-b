#!/bin/sh
# Serves this container's identity so e2e checks can read resolved env and build version.
mkdir -p /www
{
  echo "service=${SERVICE}"
  echo "version=$(cat /app/VERSION)"
  env | grep -E '^(KV_|STATE_|WKV_|PARENT_)' | sort
} > /www/index.html
exec httpd -f -p 8080 -h /www
