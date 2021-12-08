#!/bin/sh

# fix Backup
echo Restoring  Backup
cd  /jupyter-mount/Backup/VM_BACKUP
#rm -rf VM_COLLABSHARED  VM_SHARED
svn update

# fix collabshared
echo Restoring  collabspace
cd /jupyter-mounts/collaborativefolder/VM_COLLABSHARED
#rm -rf FISMED  GW  HEP
svn update



# create user areas
echo Restoring user areas
cd /jupyter-mounts/shared
for i in $(ls -1)
do
    cd $i/VM_SHARED
    echo === generate $i
    svn update
    cd ../..
done
