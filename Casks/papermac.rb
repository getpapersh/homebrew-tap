cask "papermac" do
  version "27.0.0-beta.12"
  sha256 "1dd7e92efdbbf3c8b1388cb2e85167bd4ce40dd5a0c136543bb78d98650cd94d"

  url "https://getpaper.sh/mac/get/PaperMac-#{version}.dmg?ref=brew"
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
