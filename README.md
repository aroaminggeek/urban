# urban

A Crystal library for using the Urban Dictionary API.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  urban:
    github: z64/urban
```

## Usage

```crystal
require "urban"

Urban.define("crystal") # => Listing

Urban.random # => Array(Defintion)
```

## Contributors

- [z64](https://github.com/z64) - creator, maintainer
