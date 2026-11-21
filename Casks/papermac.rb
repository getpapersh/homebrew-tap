cask "papermac" do
  version "27.0.0-beta.10"
  sha256 "0da5dd51648e5521e3afb94f812097e7995b172bf6fe9ddaacd0f1e1c210d565"

  url "https://dl.getpaper.sh/papermac/PaperMac-#{version}.dmg"
  name "PaperMac"
  desc "Scrolling tiling window manager"
  homepage "https://getpaper.sh/"

  livecheck do
    url "https://dl.getpaper.sh/papermac/appcast-27.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "PaperMac.app"
  binary "#{appdir}/PaperMac.app/Contents/Helpers/papermac"

  uninstall quit: "dev.jsonmartin.papermac"

  zap trash: [
    "~/.config/papermac",
    "~/Library/Application Support/PaperMac",
    "~/Library/Caches/dev.jsonmartin.papermac",
    "~/Library/HTTPStorages/dev.jsonmartin.papermac",
    "~/Library/Preferences/dev.jsonmartin.papermac.plist",
    "~/Library/Saved Application State/dev.jsonmartin.papermac.savedState",
  ]
end
