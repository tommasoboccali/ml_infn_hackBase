#!/bin/bash

vmshared=/jupyter-users/shared
vmbackup=/jupyter-users/Backup
vmcollabspace=/usr/local/share/collabspace


#apt-get install -u subversion

cd ${vmcollabspace}/
svn update


cd ${backup}/
svn update


cd ${vmshared}
for i in $(ls -1)
do
    cd $i
    svn update
    cd ..
done

