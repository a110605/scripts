#!/bin/bash

docker run -tdi -v $(pwd)/shared:/tmp/ ubuntu:trusty /bin/bash
docker ps -a
