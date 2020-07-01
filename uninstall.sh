#!/bin/sh

current_dir=$(dirname $0)
manifest_dir="build/install_manifest.txt"
echo "Using $current_dir/$manifest_dir"
echo "Uninstalling files:"
cat $current_dir/$manifest_dir
echo
xargs rm < $current_dir/$manifest_dir