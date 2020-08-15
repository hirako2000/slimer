#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker pull -t "${USER}/${SRC}"
docker-slim build --target "${USER}/${SRC}"
docker push "${USER}/${DST}"
