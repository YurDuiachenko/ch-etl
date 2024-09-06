#!/bin/bash
set -e

docker-compose up

docker build . -t training

docker container run -it -p 8080:80 training