require "language/node"

class ClientCertProxy < Formula
  desc "Proxies requests, providing client side certificates"
  homepage "https://github.com/kieran-bamforth/client-cert-proxy"
  head "https://github.com/kieran-bamforth/client-cert-proxy.git", branch: "master"

  depends_on "node"

  def install
	  system "npm", "install", *Language::Node.std_npm_install_args(libexec)
	  bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
