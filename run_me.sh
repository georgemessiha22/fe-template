#!/usr/bin/env bash
set -e

# Init script to kick-start your project

PROJECT_NAME=$(basename $(pwd))
PROJECT_CAP=$(echo $PROJECT_NAME | tr a-z A-Z | tr - _)
PROJECT_SNAKE=$(echo $PROJECT_NAME | tr - _)
PROJECT_WORDS=$(echo $PROJECT_NAME | tr - ' ' | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1')

echo "## Replacing all fe-template references by $PROJECT_NAME"
find . -type f -not -name run_me.sh -not -path "*.git*" -print0 | xargs -0 perl -i -pe "s|fe-template|$PROJECT_NAME|g"
find . -type f -not -name run_me.sh -not -path "*.git*" -print0 | xargs -0 perl -i -pe "s|FE_TEMPLATE|$PROJECT_CAP|g"
find . -type f -not -name run_me.sh -not -path "*.git*" -print0 | xargs -0 perl -i -pe "s|Fe Template|$PROJECT_WORDS|g"
find . -type f -not -name run_me.sh -not -path "*.git*" -print0 | xargs -0 perl -i -pe "s|fe_template|$PROJECT_SNAKE|g"


echo "## remove this script"
rm ./run_me.sh
