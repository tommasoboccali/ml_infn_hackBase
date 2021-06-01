!#/bin/bash

vmshare = /share
vmbackup = /backup
vmcollabspace = /vmcollabspace


#apt-get install -u subversion

cd ${vmcollabspace}
svn checkout svn export https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_COLLABSHARED

cd ${backup}
svn checkout svn export https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_BACKUP


