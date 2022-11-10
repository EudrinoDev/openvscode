#!/bin/sh

exec $OPENVSCODE_SERVER_ROOT/bin/openvscode-server --folder /home/cargo-template --port $PORT --host 0.0.0.0 -- $*
