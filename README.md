# MountPointBashScript
Bash Script to expand the mount point in a red hat EC2 operating system assuming the EBS volume size of the EC2 instance was increased from 20 to 100 GB.

steps to run script:

1. Connect to your instance (should be the redhat "web" instance in this case)

2. Use the 'lsblk' command to check whether the volume has a partition, 
    you may need to resize the partition (follow the EBS Volume Documentation)

3. Move mountpoint.sh into the folder. You can ls -l to see if the file needs permissions added.
    If permissions are missing simply write 'chmod u+x mountpoint.sh' into the commandline and run it.

4. Lastly, write './mountpoint.sh' into the commandline and run it, you now should have a resized mount point.




resources used:

AWS Mount Point Documentation
https://docs.aws.amazon.com/elemental-delta/latest/configguide/mount-points.html#:~:text=Remote%20servers%20are%20always%20mounted,on%20the%20local%20hardware%20unit.


AWS Extend Filesystem of EBS Volume Documentation
https://docs.aws.amazon.com/ebs/latest/userguide/recognize-expanded-volume-linux.html