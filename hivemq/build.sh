#!/usr/bin/env bash
set -e

FRAMEWORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_ROOT_DIR=.

# Build/test our scheduler.zip
${REPO_ROOT_DIR}/gradlew -p ${FRAMEWORK_DIR} check distZip

# Build package with our scheduler.zip and the local SDK artifacts we built:
HIVEMQ_DOCUMENTATION_PATH="http://YOURNAMEHERE.COM/DOCS" \
HIVEMQ_ISSUES_PATH="http://YOURNAMEHERE.COM/SUPPORT" \
$REPO_ROOT_DIR/tools/build_package.sh \
    hivemq \
    $FRAMEWORK_DIR \
    -a "$FRAMEWORK_DIR/build/distributions/$(basename $FRAMEWORK_DIR)-scheduler.zip" \
    $@
