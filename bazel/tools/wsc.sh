#!/usr/bin/env bash

set -e

if [[ -z "${GITHUB_REF}" ]]; then
	echo "STABLE_GIT_RELEASE_TAG $(git describe --tags --abbrev=0)"
else
	echo "STABLE_GIT_RELEASE_TAG ${GITHUB_REF##*/}"
fi
