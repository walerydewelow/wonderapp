#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $TRAVIS_REPO_SLUG:travis .
docker push $TRAVIS_REPO_SLUG:travis
