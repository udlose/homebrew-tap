cask "mermaidpad" do
  version "1.0.6"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f878ed997b0d3b47819c75bfd4a4a806dbd061578282b973e27d9f9bca8bc064",
         intel: "c5215f2647c8b0a5280dee835c72db34a83bf126db9d5734c23175994632f2a7"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
