cask "matadoor" do
  version "1.1.0"
  sha256 "f02d014dc4e082a209a03a3e73e20c82b7140c73c8d66be12901bd63d24cf22f"

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
