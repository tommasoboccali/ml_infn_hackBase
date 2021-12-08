#!/bin/sh

# create user areas if not existing
echo Create user areas
cd /jupyter-mounts/shared
for i in $(ls -1)
do
    cd $i
    if [ -d VM_SHARED ]; then
	echo Directory for $i exists ... doing nothing
    else
	echo === generate $i
        svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_SHARED
    fi
 
    cd ..
done
