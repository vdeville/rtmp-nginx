# RTMP Docker

Docker for RTMP Module project


Username and password is NOT for RTMP but for /stat and /control. You can find documentation here (https://github.com/arut/nginx-rtmp-module) for /control

To use:
```
docker run \
  --name rtmp-nginx
  -p 80:80 \ 
  -p 1935:1935 \
  -e USERNAME=user \
  -e PASSWORD=pass \
  mythevalentinus/rtmp-nginx:latest
```

## docker-compose.yml
```
services:
  rtmp:
    image: mythevalentinus/rtmp-nginx:latest
    restart: always
    container_name: rtmp-nginx
    environment:
      USERNAME: user
      PASSWORD: pass
    ports:
      - 80:80/tcp
      - 1935:1935
```
