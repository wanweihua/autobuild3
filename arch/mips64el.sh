#!/bin/bash
##arch/mips64el.sh: Build definitions for mip64el (optimized for Loongson 3A).
##@copyright GPL-2.0+
# Configuration confirmed in #41@aosc-os-core.
# Suggested, discussed by:
#   - Junde Yhi <lmy441900@aosc.xyz>
#   - Artoria Wang <arthur2e5@aosc.xyz>
#   - Bob Cao <bobcao3@aosc.xyz>
#   - Mingcong Bai <jeffbai@aosc.xyz>

# Note: Likely branch optimization is deprecated as of MIPS64.
#       This optimization option is removed for MIPS64r6 target.
CFLAGS_COMMON_ARCH=' -mabi=64 -march=mips64r2 -mtune=loongson3a -mno-branch-likely '
