#!/bin/bash

# Nama Image
IMAGE_NAME="karsajobs-ui"

# Tag Image
IMAGE_TAG="latest"

# Nama Image untuk Github Packages
GHCR_IMAGE_NAME="ghcr.io/nuris-isw/a433-microservices/$IMAGE_NAME:$IMAGE_TAG"

# 1. Membuat Docker Image
docker build -t $IMAGE_NAME:$IMAGE_TAG -f Dockerfile .

# 2. Melihat daftar image
docker images

# 3. Mengubah nama image
docker tag $IMAGE_NAME:$IMAGE_TAG $GHCR_IMAGE_NAME

# 4. login ke Github Packages
docker login ghcr.io

# 5. Mengunggah image ke Github Packages
docker push $GHCR_IMAGE_NAME

