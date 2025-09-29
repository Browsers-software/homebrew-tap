# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.7.1"
  sha256 "adcb035de5b7b8c442275bfc6f8e1fec94390f6f669b3337ba9946fa75c97cc6"

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
