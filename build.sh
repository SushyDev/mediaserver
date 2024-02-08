#!/bin/sh

# Install pkgx
eval "$(curl -Ssf https://pkgx.sh)"

# Install yq
env +yq

# read .env file
export $(cat .env | xargs)

# For each yml file parse using yq and output to ./build
for file in ./*.yml; do
    cat $file | yq -e | envsubst > ./build/$(basename $file)
done

echo "Build complete"
