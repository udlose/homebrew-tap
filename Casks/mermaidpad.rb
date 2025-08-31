cask "mermaidpad" do
  version "1.0.4"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "e115fb865d056d8f669bb741c0d64c073f26fda7414c78d94b0fbc838d7b5c24",
         intel: "e1472dd0f2d988172173f598e3399648dbf791e470d2b0a689b509be81b55013"

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  name "MermaidPad"
  desc "Cross-platform Mermaid diagram editor built with .NET 9 + Avalonia. It uses MermaidJS to render Mermaid Diagrams."
  homepage "https://github.com/udlose/MermaidPad"

  app "MermaidPad.app"
end
