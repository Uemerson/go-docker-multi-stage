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
go-docker-multi-stage           latest    4c42878ab6d2   9 seconds ago    1.89MB
go-docker-without-multi-stage   latest    7ce5c380ce12   39 seconds ago   852MB
```

Run go-docker-multi-stage image:

```
$ docker run go-docker-multi-stage
```

Run go-docker-without-multi-stage image:

```
$ docker run go-docker-without-multi-stage
```

# Observation

The `go-docker-without-multi-stage` image does not utilize multi-stage builds. As you can observe, the `go-docker-multi-stage` variant is approximately 450 times lighter than the `go-docker-without-multi-stage` version, with the former weighing in at 1.89MB compared to the latter's 852MB.
