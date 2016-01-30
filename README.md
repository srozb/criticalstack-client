# criticalstack-client

## Overview

Criticalstack Intel is threat intelligence exchange. It allows you to combine
several intelligence sources and subscribe it in automatic manner thanks to
CS client. It's especially useful in pair with Bro Network Security Monitor.

Please visit following links if not familiar with CS or BRO:

https://criticalstack.zendesk.com/
https://www.bro.org/

To understand how Bro takes care of intelligence data, please review:

http://blog.bro.org/2014/01/intelligence-data-and-bro_4980.html
https://www.bro.org/sphinx-git/frameworks/intel.html

## Quickstart

1. Register on https://intel.criticalstack.com/
2. follow site hints to create your collection and get an API key.
3. Get this docker image running (you may use ```./run.sh api <api_key>```)

You might want to run another docker image to get Bro NSM manager running.
If so take a look at ```srozb/bro-manager``` on hub.docker.com


