cask "mermaidpad" do
  version "1.0.1"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f5d4d73b8990489ad2119de30d1c57ac5c846020e16f1b59815c705fb3183fde",
         intel: "64d65eabd582166b32d2d1aaf8ce49715831f4b23b5d94b90b15bbfe96f8c29e"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
