#!/bin/bash

source .profile
rm -rf longhorn-engine
cp -r /home/toutou/Documents/longhorn-engine .
cd longhorn-engine
mkdir -p bin
#bash -x ./generate_grpc.sh; \
source scripts/version; \
go build -v -tags netgo -ldflags \
    "-X main.Version=$VERSION \
     -X main.GitCommit=$GITCOMMIT \
     -X main.BuildDate=$BUILDDATE \
     -linkmode external" \
     -o bin/longhorn
#bash -c "mkdir -p /host; ln -s /dev /host/dev; ln -s /proc /host/proc"
