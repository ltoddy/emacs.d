#! /usr/bin/env bash
repositories=(

)

mkdir -p thirdparty
cd thirdparty
for repository in ${repositories[@]}; do
    echo "starting clone ${repository}"
    git clone repository
done
