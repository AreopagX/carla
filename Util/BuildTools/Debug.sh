#!/bin/bash
REPOSITORY_TAG=$(git describe --tags --dirty --always)
PACKAGE_CONFIG=Shipping
ROOT=$(pwd)

# e.g., /home/carla/carla/Dist/CARLA_Shipping_0.9.15-4-g5515d3fc4-dirty
echo "Assuming root directory is ${ROOT}"
CARLA_DIR=${ROOT}/Dist/CARLA_${PACKAGE_CONFIG}_${REPOSITORY_TAG}
echo "CARLA is expected to be built in ${CARLA_DIR}"

pushd ${CARLA_DIR}/LinuxNoEditor >/dev/null

chmod +x "${CARLA_DIR}/LinuxNoEditor/CarlaUE4/Binaries/Linux/CarlaUE4-Linux-Shipping"
"${CARLA_DIR}/LinuxNoEditor/CarlaUE4/Binaries/Linux/CarlaUE4-Linux-Shipping" CarlaUE4 "$@"
