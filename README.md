# MVS 3.8j Tur(n)key 4- System Docker image
`docker pull stvnsn/mvs3.8j-tk4`

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
