cask "matadoor" do
  version "1.6.5"
  sha256 "3b4751f728d28df149cfb40ab5a84e2913d50a506087ec690a5904496a7abf0a"

  url "https://ohmslaw.net/downloads/MatadorHost-#{version}.dmg"
  name "Matadoor Host"
  desc "Menu-bar host for the Matadoor remote dev environment"
  homepage "https://ohmslaw.net/apps/matador"

  livecheck do
    url "https://ohmslaw.net/apps/matador/download"
    regex(/MatadorHost[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Matadoor Host.app"

  uninstall launchctl: "dev.matador.host",
            quit:      "dev.matador.host"

  zap trash: [
    "~/Library/Application Support/Matador",
    "~/Library/Caches/dev.matador.host",
    "~/Library/HTTPStorages/dev.matador.host",
    "~/Library/LaunchAgents/dev.matador.host.plist",
    "~/Library/Preferences/dev.matador.host.plist",
  ]
end
