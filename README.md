# Restic Docker

A simple docker container for restic with the goal of supporting multiple architechtures.

Includes rclone to support rclone backends.

Supports: linux/amd64, linux/arm64, linux/arm/v7, linux/arm/v6

## Building

```
VERSION="0.9.6"

docker buildx create --name builder
docker buildx use builder

docker buildx build --build-arg VERSION=${VERSION} --platform linux/amd64,linux/arm64,linux/arm/v7
```
