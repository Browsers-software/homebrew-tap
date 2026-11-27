# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.8.8"
  sha256 "30c375662a33be96026d516add2de1a8e6e5e070b57fdaa424c34804c0cf8c07"

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
