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
| [`soundswitcher`](Casks/soundswitcher.rb) | Switch your entire audio setup — speaker and microphone — with one keystroke ([repo](https://github.com/augustose/SoundSwitcher)) |

## Available formulae

| Formula | Description |
|---------|-------------|
| [`godev`](Formula/godev.rb) | Navigate 100+ development projects in seconds with fuzzy search ([repo](https://github.com/augustose/godev)) |

```sh
brew install augustose/tap/godev
```

> Migrating from the old `augustose/godev` tap?
>
> ```sh
> brew uninstall godev && brew untap augustose/godev
> brew trust augustose/tap && brew install augustose/tap/godev
> ```
