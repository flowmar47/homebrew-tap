# homebrew-tap

Official Homebrew tap for direct-download [Silo Systems](https://ohmslaw.net) macOS apps.

## Casks

| Cask | App | Description | Requirements |
|---|---|---|---|
| `matadoor` | Matadoor Host | Menu-bar host for the [Matadoor](https://ohmslaw.net/apps/matador) remote dev environment | Apple Silicon (`arm64`), macOS 26 (Tahoe) or later |

## Install

```bash
brew install --cask flowmar47/tap/matadoor
```

Or tap first, then install:

```bash
brew tap flowmar47/tap
brew install --cask matadoor
```

## Upgrade

```bash
brew upgrade --cask matadoor
```

## Uninstall

Remove the app and stop the `dev.matador.host` LaunchAgent:

```bash
brew uninstall --cask matadoor
```

To also remove local configuration, caches, LaunchAgent plist, and preferences:

```bash
brew uninstall --cask --zap matadoor
```

> **Note:** Keychain entries created during device pairing (`com.ohms.matador`, `com.ohms.matador.iroh`, `com.ohms.matador.pairing`) are preserved across `--zap` and can be removed from Keychain Access if you want a complete pairing reset.

## Maintaining

Before pushing cask updates:

```bash
brew style flowmar47/tap
brew audit --cask --strict --online flowmar47/tap/matadoor
brew livecheck --cask flowmar47/tap/matadoor
```

## License

MIT — see [LICENSE](LICENSE).
