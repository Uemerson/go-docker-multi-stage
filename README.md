# About

This repository aims to facilitate the development of a Go application using a Docker image with multi-stage builds, focusing on optimizing the final build size.

# Build

To initiate the build process, execute the following command:

```
$ docker build -t go-docker-multi-stage .
```

To view the final size of the image, use the following command:

```
$ docker image ls
```

Output:

```
REPOSITORY              TAG       IMAGE ID       CREATED         SIZE
go-docker-multi-stage   latest    7f017cd76204   4 minutes ago   1.89MB
```
