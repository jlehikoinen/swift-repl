Swift REPL in Docker container
==============================

Base image: `ubuntu 16.04`

Branch: `swift-3.0.2-release`

[swift.org](https://swift.org) > [Using the Swift REPL](https://swift.org/getting-started/#using-the-repl)

## Docker Hub image

[jlehikoinen/swift-repl](https://hub.docker.com/r/jlehikoinen/swift-repl/)

## Run Swift REPL in Docker container

`$ docker run --privileged -it jlehikoinen/swift-repl swift`

## Build your own Docker image

### Setup

`$ git clone https://github.com/jlehikoinen/swift-repl.git`

`$ cd swift-repl`

`$ docker build -t my-swift .`

### Usage

Swift REPL:

`$ docker run --privileged -it my-swift swift`

Run example script:

`$ docker run --privileged -it --rm -v "$PWD":/code my-swift swift code/example.swift`
