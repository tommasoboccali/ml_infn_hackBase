#!/bin/sh

# fix Backup
echo Creating  Backup
mkdir -p /jupyter-mount/Backup
cd  /jupyter-mount/Backup
rm -rf VM_BACKUP
svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_BACKUP

# create collabshared
echo Creating  collabspace
cd /jupyter-mounts/collaborativefolder/
rm -rf VM_COLLABSHARED
svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_COLLABSHARED

# create user areas
echo Create user areas
cd /jupyter-mounts/shared
for i in $(ls -1)
do
    cd $i
    echo === generate $i
    rm -rf VM_SHARED
    svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_SHARED
    cd ..
done
