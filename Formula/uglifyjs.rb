require "language/node"

class Uglifyjs < Formula
    desc "JavaScript parser / mangler / compressor / beautifier toolkit"
    homepage "http://lisperator.net/uglifyjs"
    url "https://registry.npmjs.org/uglify-js/-/uglify-js-3.3.25.tgz"
    sha256 "da12f429bf2ee4b00f66b98dfe54f9b575a4e47610c76519dccfed1b33cfed72"

    depends_on "node"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
