Swift REPL
==========

Base image: ubuntu 15.10

[Using the Swift REPL](https://swift.org/getting-started/#using-the-repl)

## Setup

`$ git clone https://github.com/jlehikoinen/dockerfiles.git`

`$ cd dockerfiles/Swift-REPL`

## Build image

`$ docker build -t my-swift .`

## Usage

Swift REPL:

`$ docker run -it --rm my-swift swift`

Run script:

`$ docker run -it --rm -v "$PWD":/code my-swift swift code/example.swift`
