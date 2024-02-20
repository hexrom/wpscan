#!/bin/bash

# WPScan command with predefined arguments
# --api-token is set using the environment variable
# "$@" allows for additional arguments to be passed at runtime
wpscan "$@" --api-token $WPSCAN_API_TOKEN --ignore-main-redirect --random-user-agent --enumerate vp
