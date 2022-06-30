#!/usr/bin/env bash

set -e

# Current DIR
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

echo "Zipping files and deleting the original one"
sh $DIR/scripts/zip_files.sh

echo "Generating Package.swift from the files structure"
sh $DIR/scripts/generate_package.sh >$DIR/Package.swift

echo "Done"
