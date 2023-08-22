# HelmDemo

## TODO

- [x] simple app
- [ ] dockerfile
  - [reading materials](https://docs.docker.com/get-started/02_our_app/)
  - how to run specific image version?
- [ ] k8s
- [ ] helm

## HOWTO

### Build a Docker image from the Dockerfile

`docker build -t helm-demo:0.0.1 .`

`-t` flag is for adding name:tag for your image

### Run Docker image

`docker run -dp 127.0.0.1:8080:8080 helm-demo`

`-d` means detached, remove it do display logs from the image to the terminal