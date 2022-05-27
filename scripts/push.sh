#!/bin/bash

./scripts/build_server.sh
docker push localhost:32000/microk8s-hello-server

./scripts/build_client.sh
docker push localhost:32000/microk8s-hello-client
