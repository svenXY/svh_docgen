# Introduction

`svh_docgen` is a very thin wrapper around `ibhagwan/ts-vimdoc.nvim`.

## Installation

with `lazy.nvim`:

```lua
{
  "svenXY/svh_docgen",
  dependencies = {
    "ibhagwan/ts-vimdoc.nvim"
  },
}
```

## Usage

When a file named _README.md_ or _Readme.md_ is open in a buffer, the command `SvhDocgen` is registered.

Call it to create the helpfile. It will try to determine the project from the directory of the Readme file, but will also interactively ask for it to be changed.

The helpfile will then be created in a doc/ subfolder, which will also be created if not already existing
