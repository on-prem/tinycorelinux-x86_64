#!/bin/sh
#
# Wrapper to run filetool with sudo based on restore= cmdline value
#
# MIT License
# Copyright (c) 2016 Alexander Williams, Unscramble <license@unscramble.jp>

export $(cat /proc/cmdline | tr ' ' '\n' | grep "^restore=")

sudo /usr/bin/filetool_orig.sh "$@"
