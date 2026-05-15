<div align="center">
  <img src="com.figma.desktop.svg" width="120" height="120" alt="Figma" />
  <h1>Figma for Linux</h1>
  <p>Flatpak packaging for the <a href="https://github.com/Figma-Linux/figma-linux">Figma Linux</a> desktop client, published under the <code>com.figma.desktop</code> app ID.</p>
</div>

---

## Requirements

* flatpak
* flatpak-builder
* org.freedesktop.Platform 24.08 and org.freedesktop.Sdk 24.08 (installed automatically)

## Building

```sh
flatpak-builder --force-clean --disable-cache --install-deps-from=flathub build-dir com.figma.desktop.yml
```

## Installing

Add `--user --install` to build and install in one step:

```sh
flatpak-builder --force-clean --disable-cache --install-deps-from=flathub --user --install build-dir com.figma.desktop.yml
```

For a system-wide installation, omit `--user` and run with `sudo`.

## Files

| File | Purpose |
|------|---------|
| `com.figma.desktop.yml` | Flatpak manifest |
| `com.figma.desktop.desktop` | Desktop entry |
| `com.figma.desktop.metainfo.xml` | AppStream metadata |
| `com.figma.desktop.svg` | Application icon |
| `figma-linux.sh` | Launch wrapper |

## License

Figma is proprietary software. This packaging is provided for convenience and is not affiliated with or endorsed by Figma, Inc.
