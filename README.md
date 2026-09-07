# homebrew-tap

Homebrew tap for [augustose](https://github.com/augustose)'s apps.

## Usage

Recent Homebrew versions require trusting third-party taps first:

```sh
brew trust augustose/tap
brew install augustose/tap/speakrate
```

Or tap first, then install:

```sh
brew tap augustose/tap
brew install speakrate
```

## Available casks

| Cask | Description |
|------|-------------|
| [`speakrate`](Casks/speakrate.rb) | Read selected text aloud with live speed control ([repo](https://github.com/augustose/SpeakRate)) |
