class Mermaidpad < Formula
  desc "Minimal cross-platform Mermaid diagram editor built with .NET 9 + Avalonia"
  homepage "https://github.com/udlose/MermaidPad"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-arm64.zip"
      sha256 "f5d4d73b8990489ad2119de30d1c57ac5c846020e16f1b59815c705fb3183fde"
    end

    on_intel do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-x64.zip"
      sha256 "64d65eabd582166b32d2d1aaf8ce49715831f4b23b5d94b90b15bbfe96f8c29e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-linux-arm64.zip"
      sha256 "5879cb7f5eb64b3a89719a1650cf0fcdd350b0b68712c6f93b340b6285fa6480"
    end

    on_intel do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-linux-x64.zip"
      sha256 "6f35fbe74159a8a2be6608ba33a25256027b0bce455616c18e5a2ad4c7df4b32"
    end
  end

  def install
    bin.install "MermaidPad"
  end

  test do
    system "#{bin}/MermaidPad", "--version"
  end
end
