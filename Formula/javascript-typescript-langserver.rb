require "language/node"

class JavascriptTypescriptLangserver < Formula
    desc "JavaScript and TypeScript code intelligence through the Language Server Protocol"
    homepage "https://github.com/sourcegraph/javascript-typescript-langserver"
    url "https://registry.npmjs.org/javascript-typescript-langserver/-/javascript-typescript-langserver-2.9.4.tgz"
    sha256 "2badfc01a741f506fafb3e220bf1192bda75da77409fd14bae4b79e5ade4c5f4"

    depends_on "node"

    def install
        system "npm", "install", *Language::Node.std_npm_install_args(libexec)
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
