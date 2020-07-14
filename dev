#!/bin/bash

#if [ -e .REL ] ; then rm -fdr .REL; fi
#mkdir .DEV

pushd cpp
./.sprall-svc/scripts/dev.sh
popd

pushd web
./.sprall-svc/scripts/dev.sh
popd

pushd python
./.sprall-svc/scripts/dev.sh
popd

pushd timescaledb
./.sprall-svc/scripts/dev.sh
popd

ln -fs .sprall/docker/docker-compose.dev.yml ./docker-compose.yml
