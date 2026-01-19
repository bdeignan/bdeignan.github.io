#!/bin/bash

# Check if inside a Git repository
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || { echo "Not a Git repository"; exit 1; }

# Output file
tmpfile=$(mktemp)

echo "Date, Lines Added" > $tmpfile

# Iterate over each commit and count lines added
git log --format="%H %ad" --date=short --reverse | while read commit date; do
    lines_added=$(git show --numstat --format="" $commit | awk '{s+=$1} END {print s}')
    echo "$date, $lines_added" >> $tmpfile
    echo "$date: $lines_added lines added"
done

# Display results
cat $tmpfile

# Clean up
test -f $tmpfile && rm $tmpfile

