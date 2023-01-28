#!/bin/bash

PATH_TO_DIR=$(dirname $(realpath "$0"))

docker build ${PATH_TO_DIR} -t template-vanilla-1.19.3
