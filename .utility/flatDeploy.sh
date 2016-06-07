#!/bin/bash

# exit on first encountered error
set -o errexit


# variables that we use
readonly REPO_OWNER="YuriyTymchuk"
readonly PROJECT_NAME="ScrapYard"
readonly PACKAGE_NAME="ConfigurationOfFlatQA"


#set the author name or it will get crazy…
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval --save "Author fullName: 'JohnSnow'" > /dev/null

# load the conf package
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval --save "Gofer new \
	repository: (MCSmalltalkhubRepository \
		owner: '$REPO_OWNER' \
		project: '$PROJECT_NAME' \
		user: '$HUB_USER' \
		password: '$HUB_PASS'); \
	package: '$PACKAGE_NAME'; \
	load." > /dev/null


# store the version
echo "Creating version $TRAVIS_TAG"
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval "ConfigurationOfFlatQA makeVersion: '$TRAVIS_TAG'" > /dev/null
echo Done!
