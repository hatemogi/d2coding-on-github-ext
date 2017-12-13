#!/bin/sh
VERSION=`cat VERSION`
DIST_DIR=dist/chrome/d2coding-web-$VERSION
mkdir -p dist/chrome
cp -RLf chrome/ $DIST_DIR/
sed -E s/VERSION/$VERSION/g chrome/manifest.json > $DIST_DIR/manifest.json
