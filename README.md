# slastrina's Homebrew tap

Personal tap. Currently hosts:

- [CaffeinateMenubar](https://github.com/slastrina/caffeinate-menubar) — menubar app that wraps the macOS `caffeinate` command
- [Rattleboard](https://github.com/slastrina/rattleboard) — split-flap message board for the menu bar, desktop or full screen
- [Tokenrunway](https://github.com/slastrina/tokenrunway) — every AI subscription's allowance, resets and spend in the menu bar

## Install

```bash
brew tap slastrina/tap
brew trust --tap slastrina/tap   # Homebrew 7+ only loads casks from taps you trust
brew install --cask caffeinatemenubar
brew install --cask rattleboard
brew install --cask tokenrunway
```

## Maintenance

Cask files are bumped for each tagged release of the source repo. Submit changes against the source repo instead.
