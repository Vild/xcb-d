# xcb-d
For xcb version v1.11.1

## Description

xcb-d is a proto-to-d generator wrapper.

It uses a heavy modified `c_client.py` (here called `d_client.py`) from the libxcb repository.

The `d_client.py` convert the .xml file from the libxcb-proto repository to .d files.

## How to update
Copy in the new .xml files from the libxcb-proto repository.
Change the xcb.d file to match the xcb.h file from the libxcb repository.
Run `./rebuild.sh`

## Licenses
See COPYING for license information.
