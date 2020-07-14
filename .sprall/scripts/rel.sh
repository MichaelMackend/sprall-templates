#!/bin/bash

#if [ -e .DEV ] ; then rm -fdr .DEV; fi
#mkdir .REL

pushd cpp 
./.sprall-svc/scripts/rel.sh 
popd

pushd web
./.sprall-svc/scripts/rel.sh
popd

pushd python
./.sprall-svc/scripts/rel.sh
popd

pushd timescaledb
./.sprall-svc/scripts/rel.sh
popd

ln -fs .sprall/docker/docker-compose.rel.yml ./docker-compose.yml
