#!/bin/sh

# fix Backup
echo Updating  Backup
cd  /jupyter-mount/Backup/VM_BACKUP
#rm -rf VM_COLLABSHARED  VM_SHARED
svn update  --accept p

# fix collabshared
echo Updating  collabspace
cd /jupyter-mounts/collaborativefolder/VM_COLLABSHARED
#rm -rf FISMED  GW  HEP
svn update --accept p



# create user areas
echo Restoring user areas
cd /jupyter-mounts/shared
for i in $(ls -1)
do
    cd $i
    if [ -d VM_SHARED ]; then
	echo === update $i
        cd VM_SHARED
	svn update --accept p
	cd ..
    fi
    cd ..
done
