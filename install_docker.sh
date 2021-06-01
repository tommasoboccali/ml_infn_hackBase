!#/bin/bash

vmshare = /share

myname = $MYNAME


#apt-get install -u subversion

cd ${vmshare}
mkdir -p $myname
cd $myname
svn checkout svn export https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_SHARED


