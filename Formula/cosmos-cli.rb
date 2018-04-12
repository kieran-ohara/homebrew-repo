require "language/node"

class CosmosCli < Formula
    desc "Command line interface for the Cosmos API"
    homepage "https://github.com/bbc/cosmos-cli"
    url "https://github.com/bbc/cosmos-cli/archive/1.19.1.tar.gz"
    sha256 "0b6d6c4d1a35fe8cbfd9398863729693bbc0466ad3d7249a7cfb90f7cf4cfb38"

    depends_on "node"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

end
