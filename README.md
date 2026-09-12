# GlassDeck, for Homebrew

A floating now-playing widget for macOS. This repository is a Homebrew tap: it
holds the recipe, not the app. The app itself lives at
[GarbisT/Glassdeck-releases](https://github.com/GarbisT/Glassdeck-releases).

## Install

```bash
brew tap garbist/glassdeck
brew trust garbist/glassdeck
brew install --cask glassdeck
```

Three lines rather than one, and the middle one is the point: Homebrew refuses
to run a recipe from a tap it has not been told to trust, because a tap is code
from a stranger. You are saying you trust this one. It fetches the notarized disk image from the releases
page above, checks it against a published checksum, and puts GlassDeck in your
Applications folder.

## Keep it current

```bash
brew upgrade --cask glassdeck
```

Or nothing at all: `brew upgrade` on its own sweeps up every app you installed
this way, GlassDeck included.

## Remove it

```bash
brew uninstall --cask glassdeck
```

Add `--zap` to take its preferences with it. GlassDeck stores nothing else: no
application support folder, no caches, no logs, and no history of what you
played.

## Requires

macOS 14 or later, Apple silicon or Intel. The download is signed with a
Developer ID, notarized by Apple and stapled, so it opens without warnings.

## Why a tap rather than the main Homebrew repository

Homebrew's own cask repository expects a project to be established before it
accepts one. GlassDeck is new. A tap needs nobody's permission, works the same
way for the person installing, and can be submitted upstream later.
