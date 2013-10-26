#!/bin/sh
set -e

FILE="$1"

ed - "${FILE}" <<- !
g/^/m0
w
q
!
