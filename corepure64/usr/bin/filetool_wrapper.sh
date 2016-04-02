#!/bin/sh
#
# Wrapper to run filetool with sudo
#
# MIT License
# Copyright (c) 2016 Alexander Williams, Unscramble <license@unscramble.jp>

sudo /usr/bin/filetool_orig.sh "$@"
