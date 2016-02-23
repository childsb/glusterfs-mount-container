# Copyright 2015 bradley cilds, All rights reserved.
#

FROM centos:7
MAINTAINER bradley childs, bchilds@gmail.com
RUN yum update -y ; yum install -y glusterfs-client 
RUN mkdir -p /mnt/mountpoint

RUN echo $'#!/bin/sh\n \
           mount -t glusterfs $1 $2; sleep infinity'> /root/mount-gluster.sh 
RUN chmod +x /root/mount-gluster.sh

ENTRYPOINT ["/root/mount-gluster.sh"]
