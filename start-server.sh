#!/bin/bash
# set -x
# set -e

function boot_up() {
    docker-compose up
}

if [ -z $@ ]; then
    boot_up
fi

$@