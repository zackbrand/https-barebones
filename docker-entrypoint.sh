#!/bin/ash

#https://stackoverflow.com/questions/5163144/what-are-the-special-dollar-sign-shell-variables

# Stops the execution of a script if a command or pipeline has an error
set -e

#If script invoked with specific arguments
if [ "$1" = 'https' ]; then
  exec node ./app.mjs
fi

# Replace the parent process, rather than have two processes running.
exec "$@"