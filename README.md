# fileserver

A simple fileserver docker container to serve static files.

Usage:

```
docker run -v /home/myuser/www:/var/www/static -e VIRTUAL_HOST=example.com davidsiaw/fileserver
```

Files in /mp4 will be served like mp4 files.
