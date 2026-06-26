cask "matadoor" do
  version "1.0.0"
  sha256 "af6e624ff85175a5686fee59d25b21d01e29fe473fdf242ca556bd01d94b283f"

  url "https://ohmslaw.net/downloads/MatadorHost-#{version}.dmg",
      verified: "ohmslaw.net/"
  name "Matadoor Host"
  desc "Menu-bar host for the Matadoor remote dev environment"
  homepage "https://ohmslaw.net/apps/matadoor"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Matadoor Host.app"

  zap trash: ["~/Library/Preferences/dev.matador.host.plist"]
end
