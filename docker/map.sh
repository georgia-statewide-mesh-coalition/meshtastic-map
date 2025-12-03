#!/bin/sh

echo "Running migrations"
npx prisma generate
npx prisma migrate deploy

echo "Starting map ui"
exec node src/index.js ${MAP_OPTS}
