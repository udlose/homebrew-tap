cask "mermaidpad" do
  version "1.1.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "5c55fc4e322b637193fc05167d52dc60c2b3f33a4028cca33c0dfddda6b34625",
         intel: "8f1587bb6c98f4527d3bb2753b2715feae1e508b89ef8fe2207d6262bade9c1f"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
