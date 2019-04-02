#!/bin/bash
CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

firefox "$@" &
