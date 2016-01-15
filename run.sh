#!/bin/bash

DATA_DIR='/data/intel'
INTEL_DIR='/opt/critical-stack/frameworks/intel'

docker run -v $DATA_DIR:$INTEL_DIR -it --rm srozb/criticalstack-client critical-stack-intel pull
