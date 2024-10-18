#!/bin/bash

# Membangun Docker image dari Dockerfile
docker build -t ghcr.io/danielsidauruk/karsajobs:latest .


# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u danielsidauruk --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/danielsidauruk/karsajobs:latest
