#!/bin/bash

cd longhorn-engine/bin
./longhorn replica ./ --size 10g --nbd-enabled 8
