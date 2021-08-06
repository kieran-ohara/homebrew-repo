require "language/node"

class NodeTypescript < Formula
  desc "TypeScript is a language for application scale JavaScript development"
  homepage "https://www.typescriptlang.org/"
  version "3.4.3"
  url "https://registry.npmjs.org/typescript/-/typescript-3.4.3.tgz"
  sha256 "acc00a5456985273ce9c11c670e955990b51cf835f612ac81ad29b7db3b4fba8"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
