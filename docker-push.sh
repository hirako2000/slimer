#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker pull -t "${SRC_USER}/${SRC_IMAGE}"
$PWD/dist_linux/docker-slim build --target "${SRC_USER}/${SRC_IMAGE}"
docker push "${DST_USER}/${DST_IMAGE}"
