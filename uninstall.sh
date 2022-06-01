#!/bin/sh

# Check if build directory exists
! [ -d "./build" ] && \
    echo "Error: No \"build\" dir found" && \
    echo "Cannot find install_manifest.txt" && \
    exit 1

dir=$(dirname "$0")
manifest_path="build/install_manifest.txt"

echo "Using $dir/$manifest_path"
echo "Uninstalling files:"
cat "$dir/$manifest_path"
echo # echo newline

# Perform uninstall of files
xargs rm < "$dir/$manifest_path"

