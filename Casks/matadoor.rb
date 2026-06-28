cask "matadoor" do
  version "1.1.0"
  sha256 "f8a6c40d58231429f8631e99ef9b35f625433401d9a79963ed182ba7de4af62e"

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
