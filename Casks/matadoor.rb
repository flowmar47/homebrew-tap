cask "matadoor" do
  version "1.6.5"
  sha256 "3b4751f728d28df149cfb40ab5a84e2913d50a506087ec690a5904496a7abf0a"

  url "https://ohmslaw.net/downloads/MatadorHost-#{version}.dmg",
      verified: "ohmslaw.net/"
  name "Matadoor Host"
  desc "Menu-bar host for the Matadoor remote dev environment"
  homepage "https://ohmslaw.net/apps/matadoor"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Matadoor Host.app"

  zap trash: ["~/Library/Preferences/dev.matador.host.plist"]
end
