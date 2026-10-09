# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.8.0"
  sha256 "694f273397927a56e377f576f0ba3b6e14937501e379a672cd1f10658584d40a"

  url "https://github.com/Browsers-software/browsers/releases/download/#{version}/browsers_mac.tar.gz"
  name "Browsers"
  desc "Open the right browser at the right time"
  homepage "https://browsers.software/"

  depends_on :macos

  app "Browsers.app"

  uninstall quit: "software.Browsers"

  zap trash: [
    "~/Library/Application Support/software.Browsers",
    "~/Library/Caches/software.Browsers",
    "~/Library/Logs/software.Browsers",
  ]
end
