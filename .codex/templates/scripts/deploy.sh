#!/usr/bin/env bash
set -euo pipefail

# Usage: ./deploy.sh <image_ref> [service_name]
# Example: ./deploy.sh ghcr.io/org/repo:sha app

IMAGE_REF="${1:-}"
SERVICE_NAME="${2:-app}"

if [[ -z "$IMAGE_REF" ]]; then
  echo "Usage: $0 <image_ref> [service_name]" >&2
  exit 1
fi

# Optional: export these in your environment
: "${COMPOSE_FILE:=docker-compose.yml}"
: "${PROJECT_NAME:=app}"

echo "Deploying $IMAGE_REF to $SERVICE_NAME using $COMPOSE_FILE (project: $PROJECT_NAME)"

# Pull the new image
DOCKER_BUILDKIT=1 docker compose -f "$COMPOSE_FILE" -p "$PROJECT_NAME" pull "$SERVICE_NAME"

# Update the image tag via env if your compose uses it
# Example in compose: image: ghcr.io/org/repo:${APP_IMAGE_TAG}
# Then export APP_IMAGE_TAG before running this script

# Restart the service
DOCKER_BUILDKIT=1 docker compose -f "$COMPOSE_FILE" -p "$PROJECT_NAME" up -d "$SERVICE_NAME"

# Basic health check (customize for your app)
if [[ -n "${HEALTHCHECK_URL:-}" ]]; then
  echo "Healthcheck: $HEALTHCHECK_URL"
  curl -fsS "$HEALTHCHECK_URL" >/dev/null
fi

echo "Deploy complete."
