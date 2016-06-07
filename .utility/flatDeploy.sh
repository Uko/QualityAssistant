#!/bin/bash

# exit on first encountered error
set -o errexit


# variables that we use
REPO_URL="http://smalltalkhub.com/mc/YuriyTymchuk/ScrapYard/main/"
PACKAGE_NAME="ConfigurationOfFlatQA"

# load the conf package
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval --save "Gofer new url: '$REPO_URL' username: '$HUB_USER' password: '$HUB_PASS'; package: '$PACKAGE_NAME'; load."

# store the version
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval "ConfigurationOfFlatQA makeVersion: '$TRAVIS_TAG'"
