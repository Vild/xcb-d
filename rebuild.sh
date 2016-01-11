#!/bin/bash

pushd source/xcb
find . -iname "*.xml" -exec python ../../d_client.py {} \;
popd
dub
