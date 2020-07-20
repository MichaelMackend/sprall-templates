#!/bin/bash

#if [ -e .REL ] ; then rm -fdr .REL; fi
#mkdir .DEV
pushd services

for D in `find . -type d`
do
    pushd $D
        ./.sprall-svc/scripts/dev.sh
    popd
done

popd

ln -fs .sprall/docker/docker-compose.dev.yml ./docker-compose.yml
