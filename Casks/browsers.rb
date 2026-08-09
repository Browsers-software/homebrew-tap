# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.7.4"
  sha256 "4fb5021899c18ab1b5a7022294acd3efda4305d1e346f4b0f88430569c87c7f9"

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
