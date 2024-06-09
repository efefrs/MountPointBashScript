#!/bin/bash

# assuming /data/mnt/ is where mount point is according to AWS documentation
MOUNT_POINT="/data/mnt/" 

# check mount point exists
if [ ! -d "$MOUNT_POINT" ]; then
	echo "Mount point $MOUNT_POINT does not exist!"
fi
