#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker pull -t "${SRC_USER}/${SRC_IMAGE}"
chmod 755 dist_linux/docker-slim
dist_linux/docker-slim build --target "${SRC_USER}/${SRC_IMAGE}"
docker push "${DOCKER_USERNAME}/${DST_IMAGE}"
