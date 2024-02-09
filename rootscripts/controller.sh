#!/bin/bash

cd longhorn-engine/bin
./longhorn controller test --frontend nbd --size 10g --current-size 10g --replica tcp://localhost:9502 --nbd-enabled 8 --frontend-streams 8

