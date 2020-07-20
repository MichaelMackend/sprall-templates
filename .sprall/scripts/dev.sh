#!/bin/bash

#if [ -e .REL ] ; then rm -fdr .REL; fi
#mkdir .DEV
pushd services

for D in *; do
    if [ -d "${D}" ]; then
    pushd ${D}
        ./.sprall-svc/scripts/dev.sh
    popd
    fi
done

popd

ln -fs .sprall/docker/docker-compose.dev.yml ./docker-compose.yml
