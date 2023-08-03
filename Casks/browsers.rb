# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.4.1"
  sha256 "52e647c78620fcac2506da28b3e3af178c3d2c0f1cbe1ac5bdec1bcf3a627c99"

  url "https://github.com/Browsers-software/browsers/releases/download/#{version}/browsers_mac.tar.gz",
      verified: "github.com/Browsers-software/browsers/"
  name "Browsers"
  desc "Open the right browser at the right time"
  homepage "https://browsers.software/"

  depends_on macos: ">= :el_capitan"

  app "Browsers.app"

  uninstall quit: "software.Browsers"

  zap trash: [
    "~/Library/Application Support/software.Browsers",
    "~/Library/Caches/software.Browsers",
    "~/Library/Logs/software.Browsers",
  ]
end
