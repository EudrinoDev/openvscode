#!/bin/sh


exec $OPENVSCODE_SERVER_ROOT/bin/openvscode-server --workspace /home/workspace/cargo-template --port $PORT --connection-token $TOKEN --host 0.0.0.0 -- $*
