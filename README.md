# getpapersh/homebrew-tap

Homebrew casks for [Paper](https://getpaper.sh).

```sh
brew install --cask getpapersh/tap/papermac
```

PaperMac updates itself with Sparkle (`auto_updates true`), so `brew upgrade` leaves it alone unless you pass `--greedy`.

If you installed PaperMac with `curl -fsSL https://getpaper.sh/install | sh`, don't also install it with Homebrew; Homebrew refuses an existing app unless you pass `--adopt`.

Uninstall: `brew uninstall --zap --cask papermac` (`--zap` also removes PaperMac's settings).
