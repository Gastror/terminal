#!/usr/bin/env bash

for file in ~/terminal/scripts/*; do
    [ -f "$file" ] && [ -x "$file" ] && . $file || echo "Could not execute $file"
done
echo "All terminal scripts loaded!"