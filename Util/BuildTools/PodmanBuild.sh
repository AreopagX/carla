#!/bin/bash
set -x
podman run -ti --rm --network host -v /home/carla/UE4.26:/home/carla/UE4.26 -v /home/carla/carla/:/home/carla/carla -u 1000:1000 --userns=keep-id ild-carla /bin/bash -c "${1}"