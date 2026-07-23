#!/usr/bin/env bash

set -e

echo "==> Updating source code..."
git pull --ff-only

echo "==> Pulling latest Docker images..."
docker compose pull

echo "==> Stopping old containers..."
docker compose down

echo "==> Starting new containers..."
docker compose up -d --remove-orphans

echo "==> Deployment completed."
echo
