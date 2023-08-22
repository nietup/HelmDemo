# HelmDemo

## TODO

- [x] simple app
- [ ] dockerfile
  - [reading materials](https://docs.docker.com/get-started/02_our_app/)
  - problem: I run `docker run -dp 127.0.0.1:9003:9003 helm-demo`, but I cannot access the app
- [ ] k8s
- [ ] helm

## HOWTO

### Build a Docker image from the Dockerfile

`docker build -t helm-demo:0.0.1 .`

`-t` flag is for adding name:tag for your image