#!/usr/bin/env bash

set -e

# Current DIR
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="${DIR}/.."

# Get frameworks
XCFRAMEWORKS="$(find $ROOT_DIR/Firebase -type f -name "*.xcframework.zip")"

# Declare newlines as a separator
OIFS=$IFS
IFS=$'\n'

echo "// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: \"Firebase-binary\",
    products: [
        .library(
            name: \"Firebase-binary\",
            targets: ["

# Render targets
for LINE in ${XCFRAMEWORKS[@]}; do
    ZIP="${LINE##*/}"
    NAME="${ZIP%.xcframework.zip}"

    echo "                \"${NAME}\"",
done

# Render middle
echo "            ]
        ),
    ],
    dependencies: [],
    targets: ["

# Render targets
for LINE in ${XCFRAMEWORKS[@]}; do
    ZIP="${LINE##*/}"
    NAME="${ZIP%.xcframework.zip}"
    FW_PATH="Firebase/${LINE##*Firebase/}"

    echo "        .binaryTarget(
            name: \"$NAME\",
            path: \"$FW_PATH\"
        ),"
done

# Render end
echo "    ],
    cxxLanguageStandard: .cxx14
)
"

# Restore the original separator
IFS=$OIFS
