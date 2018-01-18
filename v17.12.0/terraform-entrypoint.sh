#!/bin/bash

# Install the SSH key from environment variable
mkdir /home/go/.ssh
echo $GIT_SSH_KEY | base64 -d > /home/go/.ssh/id_rsa
chmod 0600 /home/go/.ssh/id_rsa

# Launch the GoCD entrypoint
exec /docker-entrypoint.sh
