cask "glassdeck" do
  version "1.5.2"
  sha256 "22d4f984d261e45f68e32c081cf1a3d4019acf1c26cc802082cc8f1727a3f1f2"

  url "https://github.com/GarbisT/Glassdeck-releases/releases/download/v#{version}/GlassDeck.dmg"
  name "GlassDeck"
  desc "Floating now-playing widget that reads music apps and browser tabs"
  homepage "https://garbist.github.io/Glassdeck-releases/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "GlassDeck.app"

  # Everything GlassDeck writes, and nothing else. It keeps preferences and
  # nothing more: no application support directory, no caches, no logs.
  zap trash: [
    "~/Library/Preferences/io.github.garbist.glassdeck.plist",
    "~/Library/Saved Application State/io.github.garbist.glassdeck.savedState",
  ]
end
