cask "glassdeck" do
  version "1.5.0"
  sha256 "851688cce8475e5696a6c1020ff2e7c5b0d29db9f39c9cc97c56810fea55e3f3"

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
