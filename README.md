# openjdk-centos7
docker image for openjdk8 based centos7

# build
```
docker buildx build --platform=linux/amd64 openjdk:8-x86 .
docker buildx build --platform=linux/arm64 openjdk:8-arm64 .
```
