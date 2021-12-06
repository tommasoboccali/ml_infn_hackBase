#!/bin/sh

# fix Backup
echo Restoring  Backup
cd /jupyter-users/Backup
#rm -rf VM_COLLABSHARED  VM_SHARED
svn update

# fix collabshared
echo Restoring  collabspace
cd /usr/local/share/collabspace
#rm -rf FISMED  GW  HEP
svn update

