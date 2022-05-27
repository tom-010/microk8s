#!/bin/bash

docker image build -t localhost:32000/microk8s-hello-server -f server/Dockerfile .