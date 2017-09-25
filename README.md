# NGINX Passthrough Container

## Purpose

Used to access remote APIs from a local container. This is helpful for fixing
CORS errors when doing development, among other things.

## Instructions

This container requires a `$PASSTHROUGH_HOST` environment variable when
starting the container.

Example:

```
$ docker run --rm -p 3000:80 -e PASSTHROUGH_HOST=https://en.wikipedia.org mikehearn/nginx-passthrough
$ curl "http://localhost:3000/w/api.php?action=query&titles=Docker%20(software)&prop=revisions&rvprop=content&format=json"
```
