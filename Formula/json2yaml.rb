require "language/node"

class Json2yaml < Formula
    desc "A command-line utility to convert a JSON file (.json) to YAML (.yml) "
    homepage "https://github.com/solderjs/json2yam"
    url "https://registry.npmjs.org/json2yaml/-/json2yaml-1.1.0.tgz"
    sha256 "7aeb901e11cd7d7f0840489d2d7959ba038ba66ae5adf94f504051f24b2de122"

    depends_on "node"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
