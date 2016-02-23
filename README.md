# glusterfs-mount-container
glusterfs mount running in a container accessible from the host.

This requires Docker 1.10+.  To buildi the docker container:
```
 ./b.sh
```

To mount a gluster volume, run:
```
 ./mount.sh host:volume mount_point
```
The container will run but not terminate.  To unmount ctrl+c to kill.


