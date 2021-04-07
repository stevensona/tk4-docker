# MVS 3.8j Tur(n)key 4- System Docker image

```
# create network
docker network create tk4

# start the system
docker run -d --network=tk4 --name=tk4 stvnsn/mvs3.8j-tk4

# connect to system
docker run --rm -it --network=tk4 stvnsn/mvs3.8j-tk4 c3270 tk4:3270
```

User HERC03/CUL8TR

User manual: http://wotho.ethz.ch/tk4-/MVS_TK4-_v1.00_Users_Manual.pdf

example docker-compose.yml
```
version: '3'
services:
  mvstk4:
    restart: unless-stopped
    image: stvnsn/mvs3.8j-tk4:latest
    ports:
      - 13270:3270
```
