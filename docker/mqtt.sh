#!/bin/sh

echo "Running migrations"
npx prisma generate
npx prisma migrate deploy

echo "Starting mqtt listener"
exec node src/mqtt.js ${MQTT_OPTS}
