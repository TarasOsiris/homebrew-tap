# Homebrew tap for Screenshot Bro

[Screenshot Bro](https://screenshotbro.app) designs, localizes and uploads App Store and Google Play
screenshots on the Mac.

```sh
brew install --cask tarasosiris/tap/screenshot-bro
```

This installs the direct-download build: signed with a Developer ID, notarized by Apple, and
identical to the [download on the website](https://screenshotbro.app/download). The app updates
itself, so `brew upgrade` is only needed if you turned automatic updates off; run
`brew upgrade --cask --greedy screenshot-bro` to force it.

Requires macOS 15 Sequoia or later, on Apple silicon or Intel.

Uninstall with `brew uninstall --cask screenshot-bro`. Adding `--zap` also deletes the app's
local data (`~/Library/Containers/xyz.tleskiv.screenshot`), which the Mac App Store version
shares. Projects stored in iCloud Drive are left alone.

## Casks

| Cask | App |
| --- | --- |
| `screenshot-bro` | [Screenshot Bro](https://screenshotbro.app) |
