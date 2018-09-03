require "language/node"

class Terminzlizer < Formula
  version '0.2.11'
  desc "CSS minifier with structural optimizations."
  homepage "https://github.com/faressoft/terminalizer"
  url "https://registry.npmjs.org/terminalizer/-/terminalizer-0.2.11.tgz"
  sha256 "91000e0c38a4a9e44ddeac000ed73548aa73214049217bd48e24afd05a4ba667"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
