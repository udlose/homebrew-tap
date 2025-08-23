class Mermaidpad < Formula
  desc "Minimal cross-platform Mermaid diagram editor built with .NET 9 + Avalonia"
  homepage "https://github.com/udlose/MermaidPad"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-arm64.zip"
      sha256 "ba1be2cc53304efab367810db2cb5893c2215252b5aba2c3d2b3e2596732dd4b"
    end

    on_intel do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-x64.zip"
      sha256 "7c8f8eaefac1c125519496928ed83f879fcccd3f9b29b0a97f18b383fd8c917c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-linux-arm64.zip"
      sha256 "2f4264bd6d4016a21df68d0b80cff814e8c13b2310faf4fcb20ff0694619bdbe"
    end

    on_intel do
      url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-linux-x64.zip"
      sha256 "f9051c8297ba20908ad942675d04690906ded7d9dbf276cb74fcd9fda8927454"
    end
  end

  def install
    bin.install "MermaidPad"
  end

  test do
    system "#{bin}/MermaidPad", "--version"
  end
end
