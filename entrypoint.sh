#!/bin/sh
#
# we use an entrypoint script here with PORT setting so that
# we can run this on heroku using containers
export SERVER_PORT="${PORT:-3000}"
echo "Arguments are $*"
echo "Working with ${SERVER_PORT}"

sed -i "s/{{APP_PORT}}/${SERVER_PORT}/g" /etc/grafana/grafana.ini

echo "Starting up server"
"/run.sh"