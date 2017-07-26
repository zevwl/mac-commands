#!/bin/sh

# Ask for specific TLD (local or com).
echo -n 'TLD: '
read tld

# Ask for password.
echo -n 'Password: '
read -s password
echo '' # add new line after password

# Store proxy string in variable.
proxy=http://zevwl:$password@livigent.bhphotovideo.$tld:8080

# Configure proxy for current session.
export HTTP_PROXY=$proxy
export HTTPS_PROXY=$proxy

# Give feedback for user.
echo 'Session proxy configured.'

