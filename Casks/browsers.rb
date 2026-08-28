# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.7.5"
  sha256 "60e461cbc3b509f29335036a5219f0fee257506feed6858f18397a64e960bf5e"

  url "https://github.com/Browsers-software/browsers/releases/download/#{version}/browsers_mac.tar.gz",
      verified: "github.com/Browsers-software/browsers/"
  name "Browsers"
  desc "Open the right browser at the right time"
  homepage "https://browsers.software/"

  # See https://docs.brew.sh/Support-Tiers#future-macos-support
  # and https://github.com/Homebrew/brew/blob/main/Library/Homebrew/macos_version.rb
  # for minimum supported macOS version
  depends_on macos: :catalina

  app "Browsers.app"

  uninstall quit: "software.Browsers"

  zap trash: [
    "~/Library/Application Support/software.Browsers",
    "~/Library/Caches/software.Browsers",
    "~/Library/Logs/software.Browsers",
  ]
end
