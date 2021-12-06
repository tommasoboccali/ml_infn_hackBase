#!/bin/sh

# fix Backup
echo Creating  Backup
mkdir -p /jupyter-mount/Backup
#rm -rf VM_COLLABSHARED  VM_SHARED
cd  /jupyter-mount/Backup
svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_BACKUP

# create collabshared
echo Creating  collabspace
cd /jupyter-mounts/collaborativefolder/
svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_COLLABSHARED

# create user areas
echo Create user areas
cd /jupyter-mounts/shared
for i in $(ls -1)
do
    cd $i
    echo === generate $i
    svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_SHARED
    cd ..
done
