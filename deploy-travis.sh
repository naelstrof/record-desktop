#!/bin/sh

set -e

npm run build:electron-deb

release=$(echo $TRAVIS_TAG | awk '{print substr($1,2);}')

src="dist-pkg/installers/record-desktop_${release}_amd64.deb"
dst="dist-pkg/installers/record-desktop_${TRAVIS_TAG}_amd64.deb"

mv $src $dst
