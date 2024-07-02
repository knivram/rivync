#!/bin/bash

docker build -t ghcr.io/marvin-kramer/rivync/webapp .

docker push ghcr.io/marvin-kramer/rivync/webapp
