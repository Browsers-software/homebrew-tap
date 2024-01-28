# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.5.0"
  sha256 "51c0ce4c83a43f9f7837296b3ee3ec6b3083a8c44dd0b424cb9e582084a9ed68"

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
