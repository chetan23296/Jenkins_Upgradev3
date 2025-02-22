#!/bin/bash
docker image build -t chetan1823/sha256:9f885012075ae29f0be35acee2cd7b3755083ea495e6c52f769ae1ea115d4d40:$1 -f jenkins-plugin-model/src/demo2-publish/dockerfile .

if [ -z ${DOCKER_HUB_USER+x} ]
then 
    echo 'Skipping login - credentials not set' 
else 
    docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD
fi

docker push chetan1823/sha256:9f885012075ae29f0be35acee2cd7b3755083ea495e6c52f769ae1ea115d4d40:$1
