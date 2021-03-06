#!/bin/bash
##11-qasec.sh: Kick the bucket if the section looks bad
##@copyright GPL-2.0+
bool $ABQA || return
if echo "$PKGSEC" | grep -q '/'; then
	QASEC="$(echo $PKGSEC | cut -d / -f 2-)"
else
	QASEC="$PKGSEC"
fi
grep -qF "$QASEC" "$AB/sets/section" ||
	abicu "QA: $QASEC not in sets/section."
