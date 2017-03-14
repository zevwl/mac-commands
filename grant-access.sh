#!/bin/sh

chmod u+x $1

# Print result only if exit code is equals to 0
if test $? -eq 0;
then
  echo Granted access to execute file: $1
fi

# Source: http://apple.stackexchange.com/questions/113974/full-privileges-on-command-file-but-it-says-i-dont-have-appropriate-privilege

