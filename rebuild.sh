#!/bin/bash
cp xcb.d source/xcb && cd source/xcb; find . -iname "*.xml" -exec python ../../d_client.py {} \;; popd && dub
