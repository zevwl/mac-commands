#!/bin/sh

echo -n 'TLD: '
read tld

echo -n 'Password:'
read -s password

echo '' # just a newline

proxy=http://zevwl:$password@livigent.bhphotovideo.$tld:8080

npm config set proxy $proxy
npm config set https-proxy $proxy
npm config set strict-ssl false

git config --global http.proxy $proxy
git config --global http.sslVerify false
git config --global https.proxy $proxy
git config --global https.sslVerify false
