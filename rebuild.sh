#!/bin/bash

pushd source/xcb
find . -iname "*.xml" -exec python ../../d_client.py {} \;
find . -iname "*.d" -exec dfmt -i {} \;
popd
dub
