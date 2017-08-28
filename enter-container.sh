#!/bin/bash

docker exec -ti $(docker ps -aq) /bin/bash
