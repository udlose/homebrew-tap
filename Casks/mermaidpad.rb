cask "mermaidpad" do
  version "1.2.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "ab910a59b37a02b22f23a296f921fd9bce6547aa76ffc2fd46dc239c47e53c4a",
         intel: "61904a21e19fe65a59c9defe9cf6021d785119ef84157e9688d3b6233108bd5e"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
