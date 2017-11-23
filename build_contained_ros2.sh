#!/bin/bash
basedir=$(dirname $0)

docker run -i --rm \
  -v $basedir/../polly:/polly \
  -v $basedir/../ros2_ws:/ros2_ws \
  -v $basedir/build_ros2.bash:/build_ros2.bash \
  -v $basedir/../rpi-root:/raspbian_ros2_root \
  -w /ros2_ws \
  ros2-raspbian:crosscompiler \
  bash /build_ros2.bash
