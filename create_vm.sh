#!/bin/sh

apt-get update
apt-get install -y subversion

# fix Backup
echo Creating  Backup
mkdir -p /jupyter-mounts/Backup
#rm -rf VM_COLLABSHARED  VM_SHARED
cd  /jupyter-mounts/Backup
svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_BACKUP

# create collabshared
echo Creating  collabspace
cd /jupyter-mounts/collaborativefolder/
svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_COLLABSHARED Exercises

# create user areas
echo Create user areas
cd /jupyter-mounts/shared
for i in $(ls -1)
do
    cd $i
    echo === generate $i
    svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_SHARED Lectures
    cd ..
done
