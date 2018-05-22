#!/bin/sh
docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v &&
docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi &&
docker volume ls -qf dangling=true | xargs -r docker volume rm
