require "language/node"

class NodeTypescriptLanguageServer < Formula
  desc "Language Server Protocol (LSP) implementation for TypeScript using tsserver"
  homepage "https://github.com/theia-ide/typescript-language-server#readme"
  version "0.5.4"
  url "https://registry.npmjs.org/typescript-language-server/-/typescript-language-server-0.5.4.tgz"
  sha256 "6f94bcac86c45aae5b9d541aa0c619012cc5ef98ee836e46bf1b309f8f85c967"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
