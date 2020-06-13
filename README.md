# Xeyes
```bash
docker build \
    --no-cache \
    --build-arg DEBIAN_VERSION=stable-slim \
    --file Dockerfile \
    --tag image-name:latest .
```
```bash
xhost +local:docker
```
```bash
docker run \
    --volume /tmp/.X11-unix:/tmp/.X11-unix:ro \
    --env DISPLAY=unix$DISPLAY \
    --name container-name image-id
```
