#!/bin/sh
set -eu
cd -- "$(dirname "$0")/.."
. ./scripts/lib.sh

main() {
  ensure_prefix_sh_c

  ensure_os
  if [ "$OS" = windows ]; then
    "$sh_c" rm -f "$PREFIX/bin/d2plugin-tala.exe"
  else
    "$sh_c" rm -f "$PREFIX/bin/d2plugin-tala"
  fi

  "$sh_c" rm -f "$PREFIX/share/man/man1/d2plugin-tala.1"
  "$sh_c" rm -f "$PREFIX/share/man/man1/tala.1"
}

main "$@"
