#!/bin/bash

# Build the docker image locally. Useful, since DockerHub does not build images on free account anymore.
# $1 - tag, if omitted, then "latest" will be built

tag="$1"

if [ "$tag" == "" ];then
    tag="latest"
fi

docker build -t "owlsoul/owltest-python:$tag" .
