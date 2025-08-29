cask "mermaidpad" do
  version "1.0.2"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "55360edb70be7f0420c4216d7a1540c0c78b14b2dedea1d4d7edf01115ee1104",
         intel: "8909c79a7cc3350541dd858ef88575a5a9aafb9b162da608e3fa2a34532f869c"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
