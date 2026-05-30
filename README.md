# solcreek/homebrew-tap

Official Homebrew tap for [SolCreek](https://github.com/solcreek) tools.

## Install

```bash
# CLIs (Formulas)
brew install solcreek/tap/dew

# GUI apps (Casks) — coming soon
# brew install --cask solcreek/tap/marina
```

## Available formulas

- [`dew`](https://github.com/solcreek/dew) — Ultra-lightweight VM + deploy tool

## Casks (planned)

- `marina` — Dev container GUI
- `grove` — Desktop app installer

## How formulas land here

Formulas are auto-PR'd by each tool's [goreleaser](https://goreleaser.com)
pipeline on a `v*` tag push. PRs are CI-gated and may auto-merge on green.

## License

Each formula points at upstream releases under their own license.
The tap repo itself is BSD-2-Clause.
