# 🗺️ Homebrew Tap for DustMap

Official Homebrew tap for [**DustMap**](https://github.com/abhiudayg/dustmap) — blazing-fast, transparent disk space analyzer and conservative cleaner for macOS.

---

## 📦 Installation

### 1. Install Desktop Application (GUI)

To install the signed macOS desktop application (`DustMap.app`):

```bash
brew install --cask abhiudayg/dustmap/dustmap
```

Or tap the repository first:

```bash
brew tap abhiudayg/dustmap
brew install --cask dustmap
```

---

### 2. Install Command-Line Interface (CLI)

To install the standalone terminal binary (`dustmap` command):

```bash
brew install abhiudayg/dustmap/dustmap
```

Or after tapping:

```bash
brew install dustmap
```

Verify the installation:

```bash
dustmap --help
dustmap scan ~
```

---

## 🔄 Updating

To update DustMap when new releases are published:

```bash
brew update
brew upgrade dustmap
# or for the desktop cask:
brew upgrade --cask dustmap
```

---

## 🗑️ Uninstallation

```bash
# Uninstall Desktop App and remove app caches
brew uninstall --cask --zap dustmap

# Uninstall CLI
brew uninstall dustmap
```

---

## 📜 License

[Apache-2.0](LICENSE) © 2026 Abhiuday Gupta
