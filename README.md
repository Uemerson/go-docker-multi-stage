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
REPOSITORY                      TAG       IMAGE ID       CREATED          SIZE
go-docker-without-multi-stage   latest    8f6b790e1cd1   17 minutes ago   852MB
go-docker-multi-stage           latest    7f017cd76204   22 minutes ago   1.89MB
```

# Observation

The `go-docker-without-multi-stage` image does not utilize multi-stage builds. As you can observe, the `go-docker-multi-stage` variant is approximately 450 times lighter than the `go-docker-without-multi-stage` version, with the former weighing in at 1.89MB compared to the latter's 852MB.
