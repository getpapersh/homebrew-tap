# getpapersh/homebrew-tap

Homebrew casks for [Paper](https://getpaper.sh).

```sh
brew tap getpapersh/tap
brew install --cask papermac
```

Homebrew 7 asks you to tap a third-party tap explicitly before installing from it, so the `brew tap` line is needed once.

PaperMac updates itself with Sparkle (`auto_updates true`), so `brew upgrade` leaves it alone unless you pass `--greedy`.

If you installed PaperMac with `curl -fsSL https://getpaper.sh/install | sh`, don't also install it with Homebrew; Homebrew refuses an existing app unless you pass `--adopt`.

Uninstall: `brew uninstall --zap --cask papermac` (`--zap` also removes PaperMac's settings).

## License

GPL-3.0-or-later. See [LICENSE](LICENSE).
