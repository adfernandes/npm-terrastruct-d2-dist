# tala

For docs see https://github.com/terrastruct/tala

version: v0.4.3
os: windows
arch: amd64

Built with go1.22.2.

This release is structured the same as our Unix releases for use with MSYS2.

You may find our `.msi` installer more convenient as it handles putting `d2.exe` into
your `$PATH` for you.

See https://github.com/terrastruct/d2/blob/master/docs/INSTALL.md#windows

## Install

```sh
make install DRY_RUN=1
# If it looks right, run:
# make install
```

Pass `PREFIX=somepath` to change the installation prefix from the default which is
`/usr/local` or `~/.local` if `/usr/local` is not writable with the current user.

## Uninstall

```sh
make uninstall DRY_RUN=1
# If it looks right, run:
# make uninstall
```
