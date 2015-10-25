#!/bin/bash

cp xcb.d xcbext.d source/xcb
pushd source/xcb
find . -iname "*.xml" -exec python ../../d_client.py {} \;
popd
dub
