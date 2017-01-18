#!/bin/sh

defaults write com.apple.screencapture location $1
echo Screenshots location set to: $1

killall SystemUIServer
echo SystemUIServer killed