glusterfs-mount-container requires Docker 1.10+.  To build the docker container:
```
 ./b.sh
```

To mount a gluster volume, run:
```
 ./mount.sh host:volume mount_point
```
The container is available on the host at specified mount_point.  To unmount CTRL+C to kill container.

For a dirty little gluster server container that exports a test_vol look here: https://github.com/childsb/containers/tree/master/gluster


