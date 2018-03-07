#!/usr/bin/env bash

for file in ~/terminal/scripts/*.sh; do
    [ -f "$file" ] && [ -x "$file" ] && . $file || echo "Could not execute $file"
done
echo "All terminal scripts loaded!"