#!/bin/bash
##arch/mipsel.sh: Build definitions for mipsel (optimized for Loongson 2F).
##@copyright GPL-2.0+
# FIXME: Loongson workaround added as suggested by biergaizi, do this break anything?
CFLAGS_COMMON_ARCH='-march=mips2 -mtune=loongson2f -mabi=32 -Wa,-mfix-loongson2f-nop '
#LDFLAGS_COMMON_ARCH='-Wl,--hash-style=sysv '
