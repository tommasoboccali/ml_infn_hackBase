#!/bin/sh

# fix Backup
echo Restoring  Backup
cd /jupyter-users/Backup
rm -rf VM_COLLABSHARED  VM_SHARED
svn update

# fix collabshared
echo Restoring  collabspace
cd /usr/local/share/collabspace
rm -rf FISMED  GW  HEP
svn update

## kill all the user areas
#echo Restoring  shared
#cd /jupyter-users/shared
#for i in $(ls -1)
#do
#    cd $i
#    echo === clean $i
#    rm -rf ANDERLINI  BOMBINI  RIZZI
#    svn update
#    cd ..
#done
#
