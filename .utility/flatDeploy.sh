#!/bin/bash

# exit on first encountered error
set -o errexit


# store the version
echo "Creating version $TRAVIS_TAG"
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval "ConfigurationOfFlatQA makeVersion: '$TRAVIS_TAG'" > /dev/null
echo Done!
