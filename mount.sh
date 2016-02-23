#!/bin/sh

if [[ $# -lt 2 ]]
then
  echo
  echo 
  echo "Usage: $0 host:volume mountpoint"
  echo 
  echo "Example: $0 /test_vol /mnt/glusterfs"
  echo
  echo "REQUIRES docker 1.10+"
  exit
fi

alias docker=/root/containers/docker/docker-1.10.2 
docker  run --privileged -v $2:/mnt/mountpoint:shared --cap-add SYS_ADMIN glusterfs-mount-client $1 /mnt/mountpoint
