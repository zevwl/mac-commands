#!/bin/sh

# Unset npm configuration (will delete .npmrc file if 
# there are no rules left)
npm config rm proxy 
npm config rm https-proxy 
npm config rm strict-ssl 

# Unset git configuration
git config --global --unset http.proxy 
git config --global --unset http.sslVerify 
git config --global --unset https.proxy 
git config --global --unset https.sslVerify 
sed -i '' '/http/d' ~/.gitconfig

