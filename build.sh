#!/bin/bash

source ~/esp-idf/4.2/export.sh
pushd `dirname $0`
idf.py build
popd