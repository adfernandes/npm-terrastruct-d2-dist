# Read Me

An `npm`-installable set of packages for [terrastruct/d2](https://github.com/terrastruct/d2) and [terrastruct/TALA](https://github.com/terrastruct/TALA) binaries.

The two packages

* `terrastruct-d2-bin` and
* `terrastruct-d2plugin-tala-bin`

have `optionalDependencies` in their `package.json` files that automatically install the platform-specific binaries.

These binaries are **exactly** as distributed by Terrastruct's versioned GitHub Releases.

## Installation

```sh
npm install terrastruct-d2-bin
npm install terrastruct-d2plugin-tala-bin # optional
```

If the optional `terrastruct-d2plugin-tala-bin` package is installed, the path to the approprite `d2tala-plugin` will be automatically prepended to the `PATH` environment variable of the `d2` process.

## Usage

```sh
node_modules/.bin/d2 --version
node_modules/.bin/d2 layout
# ... etc ...
```

This is a shim to the actual platform executable. Since it is in the `node_modules/.bin` directory, all `node` packages wil have it in their `PATH` environment variable.

Therefore you can add it as a `script` to your local `package.json` if desired, like this:
```json
  "scripts": {
    "d2": "d2"
  }
```
