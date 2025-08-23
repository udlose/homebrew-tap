cask "mermaidpad" do
  version "1.0.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "PUT_ARM64_SHA256_HERE",
         intel: "PUT_X64_SHA256_HERE"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
