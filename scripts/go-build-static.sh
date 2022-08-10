#!/bin/sh
set -x
export CGO_ENABLED=${CGO_ENABLED:-1}
exec go build -ldflags "-linkmode=external -extldflags \"-static -Wl,--fatal-warnings\" ${GO_LDFLAGS}" "${@}"
