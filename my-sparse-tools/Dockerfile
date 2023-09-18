FROM ubuntu:22.04

RUN apt-get update && apt-get install -y git golang

RUN git clone https://github.com/longhorn/sparse-tools.git && \
    cd sparse-tools && \
    go mod tidy && \
    go mod vendor && \
    go test -v -run '.*' ./sparse/... > tests.log