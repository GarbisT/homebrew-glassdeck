cask "glassdeck" do
  version "1.4.0"
  sha256 "cb7e95589b3c8afb77d5c0884618ba7b3c485edeb31967cae9869ee05534fc8f"

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
