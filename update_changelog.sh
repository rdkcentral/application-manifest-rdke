#!/bin/bash

show_usage() {
    echo "Usage: $0 <release_version>"
    exit 1
}

if [ $# -eq 0 ]; then
    show_usage
fi

auto-changelog -v $1 --commit-limit false --sort-commits date-desc

