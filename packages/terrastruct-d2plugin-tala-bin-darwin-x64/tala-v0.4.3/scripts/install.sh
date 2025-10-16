#!/bin/sh
set -eu
cd -- "$(dirname "$0")/.."
. ./scripts/lib.sh

main() {
  ensure_prefix_sh_c
  "$sh_c" mkdir -p "$PREFIX/bin"

  ensure_os
  if [ "$OS" = windows ]; then
    "$sh_c" install ./bin/d2plugin-tala.exe "$PREFIX/bin/d2plugin-tala.exe"
  else
    "$sh_c" install ./bin/d2plugin-tala "$PREFIX/bin/d2plugin-tala"
  fi

  "$sh_c" mkdir -p "$PREFIX/share/man/man1"
  "$sh_c" install ./man/d2plugin-tala.1 "$PREFIX/share/man/man1"
  "$sh_c" install ./man/tala.1 "$PREFIX/share/man/man1"
}

main "$@"
