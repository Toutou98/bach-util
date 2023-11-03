#!/bin/bash

cd longhorn-engine/bin
./longhorn controller test --frontend socket --size 2g --current-size 2g --replica tcp://localhost:9502

