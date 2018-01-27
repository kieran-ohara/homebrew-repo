require "language/node"

class ESLint < Formula
    desc "A fully pluggable tool for identifying and reporting on patterns in JavaScript"
    homepage "https://eslint.org/"
    url "https://registry.npmjs.org/eslint/-/eslint-4.16.0.tgz"
    sha256 "d6160ad2b2efccd7cc23a5c54a9603089e0eb3cd8737869e82657e6d89c4b21b"

    depends_on "node"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

end
