#!/bin/sh

set -ef

"${top_builddir}/src/aircrack-ng${EXEEXT}" \
    ${AIRCRACK_NG_ARGS} \
    -w "${abs_srcdir}/password.lst" \
    -a 2 \
    -e test \
    -q "${abs_srcdir}/wpa.cap" | \
        grep 'KEY FOUND! \[ biscotte \]'

exit 0

