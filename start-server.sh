#!/bin/bash
# set -x
# set -e

function boot_up() {
    docker-compose up
}

function update_repos() {
    mr update
}

if [ -z $@ ]; then
    update_repos
    boot_up
fi

$@