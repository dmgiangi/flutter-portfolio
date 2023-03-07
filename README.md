# portfolio

A simple portfolio made with flutter 3.0 and dart

## Getting Started

to use this portfolio git clone this project.

then edit:

- file found in data package,
- image found in asset folder.
- add a .env file in the assets with the following form (this can be done also during container
  deployment)
- add a file named curriculum.cv in the root folder of deployment (this can be done also during
  container deployment)
  then you can deploy the project.

### The .env file

the .env file must be in the following format

```text
SERVICE_ID_KEY=secret
TEMPLATE_ID_KEY=secret
USER_ID_KEY=secret
```

replace secret with data provided from emailjs.com a service that allow send email without having a
backend.

## Deploy example

### Build a container:

```bash
flutter build web
docker build -t <docker_username>/portfolio:arm64v8 --build-arg ARCH=arm64v8 .
docker build -t <docker_username>/portfolio:amd64 --build-arg ARCH=amd64 .
docker push <docker_username>/portfolio:arm64v8
docker push <docker_username>/portfolio:amd64
```

can be done with docker, using traefik and letsencrypt, to generate the https certificates as
follows: \

### Create the docker network

```shell
docker network create traefik-proxy
```

### Generate and run the portfolio container

```yaml
#Portfolio docker-compose.yaml
version: '3.9'
  services:
    portfolio:
    image: <docker_username>/portfolio:arm64v8
    container_name: "portfolio"
    labels:
      - traefik.enable=true
      - traefik.http.routers.portfolio.rule=Host(`<your_domain>`)
      - traefik.http.routers.portfolio.priority=999
      - traefik.http.routers.portfolio.tls=true
      - traefik.http.routers.portfolio.tls.certresolver=le
    networks:
      - traefik-proxy
    volumes:
      - ./cv.pdf:/usr/share/nginx/html/curriculum/curriculum.pdf
      - ./.env:/usr/share/nginx/html/assets/assets/.env
networks:
  traefik-proxy:
    name: traefik-proxy
    external: true
```

with:

```shell
docker compose up -d
```

### Generate and run traefik container

```yaml
#Traefik docker-compose.yaml
version: "3.8"

services:
  traefik:
    container_name: traefik
    image: "traefik:v2.6.0"
    command:
      # enable https entrypoint
      - --entrypoints.websecure.address=:443
      # enable http entrypoint
      - --entrypoints.web.address=:80
      - --providers.docker=true
      - --api
      - --certificatesresolvers.le.acme.email=<your_email>
      # set certificate storage file
      - --certificatesresolvers.le.acme.storage=./acme/acme.json
      # set 
      - --certificatesresolvers.le.acme.tlschallenge=true
    ports:
      - "80:80"
      - "443:443"
    networks:
      - traefik-proxy
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock:ro"
      - "./acme:/acme"
    labels:
      # DASHBOARD
      - "traefik.http.routers.traefik.rule=Host(`traefik.<your_domain>`)"
      - "traefik.http.routers.traefik.service=api@internal"
      - "traefik.http.routers.traefik.middlewares=admin"
      - "traefik.http.routers.traefik.tls.certresolver=le"
      - "traefik.http.routers.traefik.priority=3"
      # user and password pair can be generated with the following command:
      # echo $(htpasswd -nB admin) | sed -e s/\\$/\\$\\$/g
      # in the example the pair is admin password
      - "traefik.http.middlewares.admin.basicauth.users=admin:$$2y$$05$$XO3CQLaJ4cvHCRGUqXuRD.ZjndikVMKsD9E.yEgCS2dRWve0y2EQm"
      # GLOBAL REDIRECT TO HTTPS
      - "traefik.http.routers.redirs.rule=hostregexp(`{host:.+}`)"
      - "traefik.http.routers.redirs.entrypoints=web"
      - "traefik.http.routers.redirs.middlewares=redirect-to-https"
      - "traefik.http.middlewares.redirect-to-https.redirectscheme.scheme=https"
networks:
  traefik-proxy:
    name: traefik-proxy
    external: true
```

with:

```shell
docker compose up -d
```

### Done

Enjoy!