#!/bin/bash

vmshare = /share

myname = $USERNAME


#apt-get install -u subversion

cd ${vmshare}
if [ -d "${vmshare}/${myname}" ] 
then
    echo "Directory /path/to/dir exists." 
else
 mkdir -p $myname
 cd $myname
 svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_SHARED
fi


