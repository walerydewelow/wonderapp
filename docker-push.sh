#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag $TRAVIS_REPO_SLUG:travis $TRAVIS_REPO_SLUG
docker push $TRAVIS_REPO_SLUG:travis
