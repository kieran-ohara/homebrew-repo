require "language/node"

class NodeJson2yaml < Formula
  desc "A commandline utility to convert JSON to YAML / YML"
  homepage "https://github.com/coolaj86/json2yaml#readme"
  version "1.1.0"
  url "https://registry.npmjs.org/json2yaml/-/json2yaml-1.1.0.tgz"
  sha256 "7aeb901e11cd7d7f0840489d2d7959ba038ba66ae5adf94f504051f24b2de122"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
