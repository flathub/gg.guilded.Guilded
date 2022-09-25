#!/bin/bash

if [[ $XDG_SESSION_TYPE == "wayland" ]] && [ -f /dev/nvidia0 ]
then
  FLAGS="$FLAGS --disable-gpu-sandbox"
fi

env TMPDIR="$XDG_CACHE_HOME" zypak-wrapper /app/extra/guilded/guilded "$FLAGS" "$@"
