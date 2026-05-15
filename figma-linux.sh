#!/bin/bash
XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-~/.config}

if [[ -f $XDG_CONFIG_HOME/figma-flags.conf ]]; then
    FIGMA_USER_FLAGS="$(grep -v '^#' $XDG_CONFIG_HOME/figma-flags.conf)"
fi

exec /app/lib/figma-linux/figma-linux \
    --no-sandbox \
    $FIGMA_USER_FLAGS "$@"
