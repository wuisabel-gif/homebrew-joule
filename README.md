# homebrew-joule

Homebrew tap for [**Joule**](https://github.com/wuisabel-gif/Joule) — energy-aware
optimization middleware for LLM inference.

## Install

```sh
brew install wuisabel-gif/joule/joule
```

Or tap first, then install:

```sh
brew tap wuisabel-gif/joule
brew install joule
```

## Update

```sh
brew update && brew upgrade joule
```

The formula ([`Formula/joule.rb`](Formula/joule.rb)) installs a prebuilt binary
for macOS (arm64/x86-64) and Linux (x86-64) — no Rust toolchain needed.

## License

Apache-2.0, same as [Joule](https://github.com/wuisabel-gif/Joule).
