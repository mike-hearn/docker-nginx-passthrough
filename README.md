# NGINX Passthrough Container

## Purpose

Used to access remote APIs from a local container. This is helpful for fixing
CORS errors when doing development, among other things.

## Instructions

This container requires a `$PASSTHROUGH_HOST` environment variable when
starting the container.

This example uses the useful service
[JSONPlaceholder](https://jsonplaceholder.typicode.com/) as its sample
passthrough API.

Example:

```
$ docker run -d --rm \
    --name nginx_passthrough \
    -p 3000:80 \
    -e PASSTHROUGH_HOST=https://jsonplaceholder.typicode.com \
    -e ALLOWED_ORIGIN=\$http_origin \
    mikehearn/nginx-passthrough

$ curl http://localhost:3000/posts/1

$ docker stop nginx_passthrough
```
