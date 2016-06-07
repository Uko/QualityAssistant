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
$SMALLTALK_CI_VM $SMALLTALK_CI_IMAGE eval --save "\
  | repo | \
  repo := MCSmalltalkhubRepository \
    owner: '$REPO_OWNER' \
    project: '$PROJECT_NAME' \
    user: '$HUB_USER' \
    password: '$HUB_PASS'. \
\
  MCRepositoryGroup default repositories \
    detect: [ :each | each = repo ] \
    ifFound: [ :other | other become: repo ]. \
\
  Gofer new \
    repository: repo; \
    package: '$PACKAGE_NAME'; \
    load." > /dev/null
