!#/bin/bash

vmshare = /share
vmbackup = /backup
vmcollabspace = /vmcollabspace


#apt-get install -u subversion

cd ${vmcollabspace}/VM_COLLABSHARED
svn update


cd ${backup}/VM_BACKUP
svn update


cd ${vmshare}
for i in $(ls -1)
do
    cd $i
    svn update
    cd ..
done
