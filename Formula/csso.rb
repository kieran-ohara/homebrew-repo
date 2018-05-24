class Csso < Formula
    desc "CSS minifier with structural optimizations."
  homepage "https://github.com/css/csso"
  url "https://registry.npmjs.org/csso-cli/-/csso-cli-1.1.0.tgz"
  sha256 "0652f1c5a35ec6f4ae1b0aee6a83f9f8fcb6e0fb6a3b0d6621d70965ff68e0d1"

  depends_on "node"

  def install
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
