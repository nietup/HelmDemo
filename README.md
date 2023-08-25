# HelmDemo

## TODO

- k8s
- helm

## HOWTO

### Quickstart

#### Pure Docker way

```
mvn clean install
docker build -t helm-demo:0.0.1 .
docker run -dp 127.0.0.1:8080:8080 helm-demo:0.0.1
...
docker stop <container id from docker ps>
```

#### docker-compose way

```
mvn clean install
docker build -t helm-demo:0.0.1 .
docker-compose up -d
...
docker-compose down
```

#### k8s way

```
mvn clean install
docker build -t helm-demo:0.0.1 .
docker tag helm-demo:0.0.1 nietup/helm-demo:0.0.1
docker login -u nietup
docker push nietup/helm-demo:0.0.1
minikube start
kubectl apply -f helm-demo.yml
kubectl port-forward service/helm-demo-svc 8080:8080
...
kubectl delete -f helm-demo.yml
```

### Explanations

#### Build a Docker image from the Dockerfile

`docker build -t helm-demo:0.0.1 .`

`-t` flag is for adding name:tag for your image

#### Run Docker image

`docker run -dp 127.0.0.1:8080:8080 helm-demo:0.0.1`

`-d` means detached, remove it do display logs from the image to the terminal

#### Push Docker image

First you need to log in to the registry

`docker login -u nietup`

Tag your image with your username

`docker tag helm-demo:0.0.1 nietup/helm-demo:0.0.1`

Now you may push

`docker push nietup/helm-demo:0.0.1`

#### K8s yml

It pulls from docker hub by default. You may make it use local image, but it's hacky. That's why before running `kubectl apply -f .`, you have to push your image to dockerhub