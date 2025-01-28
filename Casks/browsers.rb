# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.6.0"
  sha256 "035f3499e447d5c3678246f44a0bf7c6bea0537c8b7c037f7d49c46fbef0cbf7"

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
