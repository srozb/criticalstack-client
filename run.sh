#!/bin/bash

#USAGE:
#./run.sh api [your-api-key]
#this should fetch your criticalstack collection to INTEL_DIR
#
#set the DATA_DIR so it suits your configuration
#/opt/bro/share/bro/site/intel seems fine if you are a bro user.
#Use shared volume or dir if using my bro-manager docker image.
#
#review Docker & Bro reference to obtain more info.

DATA_DIR='/data/intel'
INTEL_DIR='/opt/critical-stack/frameworks/intel'

docker run -v $DATA_DIR:$INTEL_DIR -it --rm srozb/criticalstack-client $@
