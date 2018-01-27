require "language/node"

class ESLint < Formula
    desc "A fully pluggable tool for identifying and reporting on patterns in JavaScript"
    homepage "https://eslint.org/"
    url "https://github.com/eslint/eslint/archive/v4.16.0.tar.gz"

    def install
        system "npm", "install", "eslint@4.16.0", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

end
