# HelmDemo

## TODO

- k8s
- helm

## HOWTO

### Quickstart

#### Pure Docker way

```
mci
docker build -t helm-demo:0.0.1 .
docker run -dp 127.0.0.1:8080:8080 helm-demo:0.0.1
...
docker stop <container id from docker ps>
```

#### docker-compose way

```
mci
docker build -t helm-demo:0.0.1 .
docker-compose up -d
...
docker-compose down
```

### Explanations

#### Build a Docker image from the Dockerfile

`docker build -t helm-demo:0.0.1 .`

`-t` flag is for adding name:tag for your image

#### Run Docker image

`docker run -dp 127.0.0.1:8080:8080 helm-demo:0.0.1`

`-d` means detached, remove it do display logs from the image to the terminal
