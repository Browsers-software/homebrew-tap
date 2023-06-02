# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.3.6"
  sha256 "c2b5bea53b1e20c6d155a6122b7250770f5f35c3ccddffe74495d0a75d959ff7"

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
