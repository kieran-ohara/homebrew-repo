require "language/node"

class NodeLighthouse < Formula
  desc "Automated auditing, performance metrics, and best practices for the web."
  homepage "https://github.com/GoogleChrome/lighthouse#readme"
  version "7.1.0"
  url "https://registry.npmjs.org/lighthouse/-/lighthouse-7.1.0.tgz"
  sha256 "5f82860451165af269fea38797f913006d437130ec2de73fd95f3de4b4ca19cc"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
