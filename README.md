# Docker image for wpantund

```sh
docker pull rubdos/wpantund
```

Config files are mounted in `/etc/wpantund/` instead of `/etc/` directly.

## Building

```
docker buildx build --platform=linux/amd64,linux/arm64,linux/arm/v7 -t rubdos/wpantund:latest --push .
```
