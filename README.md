Swift REPL in Docker container
==============================

Base image: `ubuntu 15.10`

Branch: `development`

[swift.org](https://swift.org) > [Using the Swift REPL](https://swift.org/getting-started/#using-the-repl)

## Docker Hub image

[jlehikoinen/swift-repl](https://hub.docker.com/r/jlehikoinen/swift-repl/)

## Run Swift REPL in Docker container

`$ docker run -it --rm jlehikoinen/swift-repl swift`

## Build your own Docker image

### Setup

`$ git clone https://github.com/jlehikoinen/swift-repl.git`

`$ cd swift-repl`

`$ docker build -t my-swift .`

### Usage

Swift REPL:

`$ docker run -it --privileged=true my-swift swift`

Run example script:

`$ docker run -it --rm --privileged=true -v "$PWD":/code my-swift swift code/example.swift`
