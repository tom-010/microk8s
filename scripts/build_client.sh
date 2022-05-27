#!/bin/bash

docker image build -t localhost:32000/microk8s-hello-client -f client/Dockerfile .