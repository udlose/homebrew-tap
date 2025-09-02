cask "mermaidpad" do
  version "1.0.5"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f0022952c15f8925eb4b9d93b87211cdf8f7b12d2efbc606a966dda0013e8984",
         intel: "82041a858fb3daa60e9127008cc3e5a03d0a0cf235d2c4eea52f5c1f29237b56"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
