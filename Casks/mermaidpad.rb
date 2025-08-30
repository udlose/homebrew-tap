cask "mermaidpad" do
  version "1.0.3"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "d7b13fe2ec5263f5b348afb9f5c173e0aa65d3cc72c538fb39f7d9e33fda5f32",
         intel: "3f4dea8e5a942e6d65990fbf50e77cad0a681b4a834e733367e6f3033c5f388f"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
