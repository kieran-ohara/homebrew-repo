require "language/node"

class CosmosCli < Formula
  version "1.20.0"
  desc "Command line interface for the Cosmos API"
  homepage "https://github.com/bbc/cosmos-cli"
  url "https://github.com/bbc/cosmos-cli/archive/1.20.0.tar.gz", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "31fd2aeba0efd6b64bb2287bf588a468557b071e5970a1c4a7ba6dfaf6a48f60"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
