#!/bin/bash

#if [ -e .REL ] ; then rm -fdr .REL; fi
#mkdir .DEV
pushd services

for D in `find . -type d`
do
    pushd $D
        ./.sprall-svc/scripts/rel.sh
    popd
done

popd

ln -fs .sprall/docker/docker-compose.rel.yml ./docker-compose.yml
