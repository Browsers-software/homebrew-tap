# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.8.3"
  sha256 "fc7317d4f27a097c412629e4cec1c6555c8d732f016ac8f8b222b4ed3463092e"

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
