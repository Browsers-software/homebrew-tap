# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.8.5"
  sha256 "ed63389762ec1dcfcaca11ee0576ab06b1ecf3db2ed6e8e840748481984a6bd2"

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
