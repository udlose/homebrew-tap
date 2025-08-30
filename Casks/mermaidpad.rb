cask "mermaidpad" do
  version "1.0.2"
  arch arm: "arm64", intel: "c8fbeca0b8b63b2f635c026144d78374db37883e3b714deb36a70a10ea301661"

  sha256 arm:   "cdf44a31ce527d3ff0922414191efc61faa3e4f6c4bff9e45b32c12a1aa97b5c",
         intel: "c8fbeca0b8b63b2f635c026144d78374db37883e3b714deb36a70a10ea301661"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
