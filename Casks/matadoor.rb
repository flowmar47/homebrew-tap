cask "matadoor" do
  version "1.1.0"
  sha256 "7ab8e061c96faf9a8731a0dd3ef091fbda5beed72004520be33dd009f519fdd9"

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
