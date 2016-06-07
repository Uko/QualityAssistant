#!/bin/bash

# exit on first encountered error
set -o errexit


# variables that we use
readonly REPO_URL="http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/"
readonly PACKAGE_NAME="ConfigurationOfFlatQA"
readonly DEPLOYMENT_DIR=$(readlink -m $(dirname $SMALLTALK_CI_IMAGE))
readonly DEPLOYMENT_IMAGE=$DEPLOYMENT_DIR/Deploy.image

#copy the image
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE save Deploy

# load the conf package
$SMALLTALK_CI_VM $DEPLOYMENT_IMAGE eval --save "Gofer new url: '$REPO_URL' username: '$HUB_USER' password: '$HUB_PASS'; package: '$PACKAGE_NAME'; load."

# store the version
$SMALLTALK_CI_VM $DEPLOYMENT_IMAGE eval "ConfigurationOfFlatQA makeVersion: '$TRAVIS_TAG'"
