#!/bin/sh
source /rt/toolkit/utils.sh

# $1 : docker tag
if [ -z "$1" ]
  then
    echo "No tag number supplied, should perform like : $0 CKB-XXXX"
    exit 1
fi
imageName=kiwi-baselayout

echo
echo "**********************************************************************"
echo "* docker build $imageName:$1 "
echo "**********************************************************************"
echo
docker build $dockerBuildArg --rm -t $dockerrepo/$imageName:$1 .

echo
echo "**********************************************************************"
echo "* docker push $dockerrepo/$imageName:$1 "
echo "**********************************************************************"
echo
pushImageToDockerHub $imageName $1