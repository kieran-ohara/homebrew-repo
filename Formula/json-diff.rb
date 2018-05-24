require "language/node"

class JsonDiff < Formula
    desc "Structural diff for JSON files"
    homepage "https://github.com/andreyvit/json-diff"
    url "https://registry.npmjs.org/json-diff/-/json-diff-0.5.2.tgz"
    sha256 "2dad239737ea6a31d3e521f40726a1510d3954b140c9577fb83ce23b885dde7d"

    depends_on "node"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
