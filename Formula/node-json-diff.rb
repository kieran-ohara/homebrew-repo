require "language/node"

class NodeJsonDiff < Formula
  desc "JSON diff"
  homepage "https://github.com/andreyvit/json-diff"
  version "0.5.4"
  url "https://registry.npmjs.org/json-diff/-/json-diff-0.5.4.tgz"
  sha256 "81f7ce0aec1a8dbd8044753a0f786c25f1881a8c33068da0e05784ea083ff17a"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
