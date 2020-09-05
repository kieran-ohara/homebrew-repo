require "language/node"

class NodeDockerLanguageServer < Formula
  desc "A language server for Dockerfiles powered by NodeJS, TypeScript, and VSCode technologies."
  homepage "https://github.com/rcjsuen/dockerfile-language-server-nodejs#readme"
  version "0.1.1"
  url "https://registry.npmjs.org/dockerfile-language-server-nodejs/-/dockerfile-language-server-nodejs-0.1.1.tgz"
  sha256 "611d062998374eda25868df5c89fed3ffc4ca8afb2d3f1e4a2d1f54d1c1c4454"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
