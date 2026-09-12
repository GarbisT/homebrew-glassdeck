cask "glassdeck" do
  version "1.3.0"
  sha256 "1f3cf4ca23b8b99b8738110e83e41249c6fff38fb79ce2ed4c345ee0b311010e"

  url "https://github.com/GarbisT/Glassdeck-releases/releases/download/v#{version}/GlassDeck.dmg",
      verified: "github.com/GarbisT/Glassdeck-releases/"
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
