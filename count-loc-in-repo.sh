#!/bin/sh

# This command counts the number of lines of code in a Git repository
git ls-files | xargs wc -l
