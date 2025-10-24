# udlose's Homebrew Tap

[![Update MermaidPad Cask](https://github.com/udlose/homebrew-tap/actions/workflows/update-cask.yml/badge.svg)](https://github.com/udlose/homebrew-tap/actions/workflows/update-cask.yml)
[![CodeQL](https://github.com/udlose/homebrew-tap/actions/workflows/codeql.yml/badge.svg)](https://github.com/udlose/homebrew-tap/actions/workflows/codeql.yml)

---

A personal Homebrew tap providing easy installation and updates for my open-source macOS applications.

## Available Casks

### MermaidPad
Cross-platform Mermaid diagram editor built with .NET 9 and Avalonia. Create flowcharts, sequence diagrams, class diagrams, and more with live preview.

**Features:**
- Real-time Mermaid diagram rendering
- Built-in syntax highlighting
- Automatic MermaidJS library updates
- Cross-platform support (Windows, Linux, macOS)

## Installation

### Add the Tap
```bash
brew tap udlose/tap
```

### Install MermaidPad
```bash
brew install --cask mermaidpad
```

### One-Line Installation
```bash
brew install --cask udlose/tap/mermaidpad
```

## Usage

After installation, launch MermaidPad from:
- **Spotlight**: Press `Cmd+Space`, type "MermaidPad"
- **Applications folder**: `/Applications/MermaidPad.app`
- **Terminal**: `open -a MermaidPad`

## Updates

Updates are handled automatically by Homebrew:

```bash
# Update tap and check for new versions
brew update

# Upgrade MermaidPad if a new version is available
brew upgrade --cask mermaidpad
```

The tap is automatically updated within 24 hours of each MermaidPad release.

## Uninstallation

```bash
# Remove MermaidPad
brew uninstall --cask mermaidpad

# Remove the tap (optional)
brew untap udlose/tap
```

## Requirements

- **macOS**: 12.0+ (Monterey or later)
- **.NET Runtime**: 9.0+ ([Download here](https://dotnet.microsoft.com/download/dotnet/9.0))

## Links

- **MermaidPad Repository**: [github.com/udlose/MermaidPad](https://github.com/udlose/MermaidPad)
- **Issues & Support**: [MermaidPad Issues](https://github.com/udlose/MermaidPad/issues)
- **Tap Repository**: [github.com/udlose/homebrew-tap](https://github.com/udlose/homebrew-tap)

## Technical Details

This tap automatically stays in sync with MermaidPad releases through automated workflows that:
- Check for new releases daily
- Download and verify checksums
- Update cask files with new versions and SHA256 hashes
- Create pull requests for review

For technical details about the automation process, see [Workflow Documentation](.github/workflows/README.md).