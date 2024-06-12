#!/usr/bin/env sh

PROJECT="paper"
MINECRAFT_VERSION="1.20.6"

LATEST_BUILD=$(curl -s https://api.papermc.io/v2/projects/${PROJECT}/versions/${MINECRAFT_VERSION}/builds | \
    jq '.builds | map(select(.channel == "default") | .build) | .[-1]')

if [[ "$LATEST_BUILD" != "null" ]]; then
    echo "Latest stable build for paper-$MINECRAFT_VERSION is $LATEST_BUILD"
    echo "just run download-latest-stable-build.sh to download new paper jar"
else
    echo "No stable build for version $MINECRAFT_VERSION found :("
fi
