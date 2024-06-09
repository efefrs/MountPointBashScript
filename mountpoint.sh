#!/bin/bash

# gets the mount point of the system (df prints the list of filesystems present. We take the first in the list
# the / (root) and get just the filesystem name (something like /dev/nvme0n1p1 from the AWS example)
MOUNT_POINT=$(df | awk 'NR==2 {print $1}')

echo using mount point $MOUNT_POINT from list of filesystems:
echo ----
df -hT
echo ----

# the EC2 Instance we're interacting with is a redhat 9 ami, which means we should be an ext3/ext4 filesystem
# this means we can use resize2fs to extend the mounted system (it's a different command if we were an xfs system)
sudo resize2fs $MOUNT_POINT
