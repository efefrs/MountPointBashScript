#!/bin/bash

# gets the mount point of the system (df prints the list of filesystems present. We take the first in the list
# the / (root) and get just the filesystem name (something like /dev/nvme0n1p1 from the AWS example)
MOUNT_POINT=$(df | awk 'NR==2 {print $1}')

echo using mount point $MOUNT_POINT from list of filesystems:
echo ----
df -hT
echo ----
