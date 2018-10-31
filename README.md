# fileserver

A simple fileserver docker container to serve static files.

For use with https://github.com/jwilder/nginx-proxy

Usage:

```
docker run -v /home/myuser/www:/var/www/static -e VIRTUAL_HOST=example.com VIRTUAL_PORT davidsiaw/fileserver
```

Files in /mp4 will be served like mp4 files.
