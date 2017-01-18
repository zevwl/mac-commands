#!/bin/sh

defaults write com.apple.finder AppleShowAllFiles $1
echo Show hidden files: $1

killall Finder
echo Finder killed

# Finder is relaunched at the same location by default, no action required
