#!/bin/bash
# set -x
# set -e



function boot_up() {
    mkdir www
    (cd www && git clone 'https://github.com/lordgape/parrot.git')    
    (cd www && git clone 'https://github.com/lordgape/minion.git')
    (cd www && git clone 'https://github.com/lordgape/consumer.git')
    (cd www && git clone 'https://github.com/lordgape/dock.git')
    (cd www/dock && docker-compose up)
}

if [ -z $@ ]; then
    boot_up
fi

$@