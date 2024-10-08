#!/usr/bin/env bash
#
# This code is released in public domain by Han Boetes <han@mijncomputer.nl>
# Updated by Dave Davenport <qball@gmpclient.org>
#
# This script tries to exec a terminal emulator by trying some known terminal
# emulators.
#
# We welcome patches that add distribution-specific mechanisms to find the
# preferred terminal emulator. On Debian, there is the x-terminal-emulator
# symlink for example.
for terminal in $TERMINAL kitty konsole alacritty 
	wezterm x-terminal-emulator urxvt rxvt st terminology
	qterminal Eterm aterm uxterm xterm roxterm 
	xfce4-terminal.wrapper mate-terminal lxterminal; do
    if command -v $terminal >/dev/null 2>&1; then
        exec $terminal "$@"
    fi
done

rofi -e "Failed to find a suitable terminal"
