#!/bin/sh

# Wait for the PostgreSQL container to be ready and run migrations
until npx prisma migrate dev --name init; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

# Run Prisma generate
npx prisma generate

# Start the application
exec npm start