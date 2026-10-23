# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.8.2"
  sha256 "8d331142f735d6502a25f06fad82e57b2c4b4037143e93521e4ee77665d97a4c"

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
