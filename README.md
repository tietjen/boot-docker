The Go code must be compiled for the architecture of the docker environment not the local build env.

If you get an exec format error, it's probably because you built the go server for your local architecture, but you're trying to run it on a Linux OS! To fix it, rebuild the binary (and then the Dockerfile) with these flags:

```GOOS=linux GOARCH=amd64 go build```

Then build the docker container

```docker build . -t goserver:latest```