# hugo-docker
An alpine docker image with a [hugo](https://gohugo.io/) binary.

Accessible at https://hub.docker.com/r/ameypar/hugo-alpine

The `hugo` binary is available at `/go/bin/hugo`.

# Building
```
docker build -t ameypar/hugo-alpine .
```

# Uploading manually

This shouldn't be required because https://hub.docker.com/r/ameypar/hugo-alpine is linked to this repo.
```
docker push ameypar/hugo-alpine:latest
```
