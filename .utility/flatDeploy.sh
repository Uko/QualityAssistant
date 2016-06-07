#!/bin/bash

# exit on first encountered error
set -o errexit


# variables that we use
readonly REPO_URL="http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/"
readonly PACKAGE_NAME="ConfigurationOfFlatQA"

#set the correct vm
SMALLTALK_CI_VM=`find $SMALLTALK_CI_VMS -name pharo -type f -perm +0111 | head -n 1`

#set the author name or it will get crazy…
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval --save "Author fullName: 'JohnSnow'"

# load the conf package
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval --save "Gofer new url: '$REPO_URL' username: '$HUB_USER' password: '$HUB_PASS'; package: '$PACKAGE_NAME'; load."

# store the version
echo Creating version $TRAVIS_TAG
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval "ConfigurationOfFlatQA makeVersion: '$TRAVIS_TAG'"
echo Done!
