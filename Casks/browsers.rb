# typed: true
# frozen_string_literal: true

cask "browsers" do
  version "0.8.7"
  sha256 "38be0ab00af203cb78bbfba141232585170f240b163fdb7faa117e8962f2d448"

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
