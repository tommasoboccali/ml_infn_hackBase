#!/bin/sh

# create collabshared
echo Creating  collabspace
cd /jupyter-mounts/collaborativefolder/
rm -rf VM_COLLABSHARED
svn checkout https://github.com/tommasoboccali/ml_infn_hackBase/trunk/VM_COLLABSHARED

