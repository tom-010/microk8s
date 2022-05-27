#!/bin/bash

./scripts/build_server.sh
docker run -p 50051:50051 microk8s-hello-server
