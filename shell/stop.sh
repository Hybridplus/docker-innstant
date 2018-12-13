#! /bin/sh
docker container stop node
docker container stop innstant4
docker rm node
docker rm innstant4
docker rm composer-i
