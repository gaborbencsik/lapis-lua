#!/bin/sh

echo "Starting Lapis app"
echo "Build Nginx config"

exec lapis build
#
sleep 5
#
echo "Start application"
#
# exec "$@"
exec ls -lah

echo "$@"
exec "$@"
