#!/bin/sh
set -e

# USE the trap if you need to also do manual cleanup after the service is stopped,
#     or need to start multiple services in the one container
trap "echo TRAPed signal" HUP INT QUIT KILL TERM

# Put your own startup command here
echo "This is kiwi/baselayout"
echo I am
whoami
echo
export

/bin/bash

# stop service and clean up here
echo "stopping service..."
echo "exited $0"
