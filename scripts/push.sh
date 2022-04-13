#!/bin/bash

# Push the image to dockerhub. Manually, since DockerHub cancelled the integration with GitHub on free plan.

tag="$1"

if [ "$tag" == "" ];then
    echo "ÐYou must speciy the tag, like this: 'push.sh latest' or 'push.sh 1.0.0' "
    exit 1
fi


docker push "owlsoul/owltest-python:$tag"
