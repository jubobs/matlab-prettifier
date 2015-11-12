#!/bin/sh
[ $# -eq 1 ] || exit 1

PKGNAME="$1"
rm -f ${PKGNAME}.tar.gz
make all clean && \
  ctanify ${PKGNAME}.ins ${PKGNAME}.pdf README makefile
