class PythonGitSweep < Formula
  desc "GitSweep"
  homepage "http://arc90.com"
  version "0.1.1"
  url "https://files.pythonhosted.org/packages/68/71/a4b06ba2cd275a2cc1c1eef46ae655517c6b8b05326e8bf60b89e01f2a59/git-sweep-0.1.1.tar.gz"
  sha256 "cd29f1c37247b05aeef5f399489657f973aed78e2e2740da20a62502da0757b3"
  depends_on "python"

  include Language::Python::Virtualenv

    resource "git-sweep" do
    url "https://files.pythonhosted.org/packages/68/71/a4b06ba2cd275a2cc1c1eef46ae655517c6b8b05326e8bf60b89e01f2a59/git-sweep-0.1.1.tar.gz"
    sha256 "cd29f1c37247b05aeef5f399489657f973aed78e2e2740da20a62502da0757b3"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/d1/05/eaf2ac564344030d8b3ce870b116d7bb559020163e80d9aa4a3d75f3e820/gitdb-4.0.5.tar.gz"
    sha256 "c9e1f2d0db7ddb9a704c2a0217be31214e91a4fe1dea1efad19ae42ba0c285c9"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/63/c7/639d7965f5c860ba0fec323fd3b80ba57f7c3eb90e58ca5b4ea467e50ba9/GitPython-3.1.8.tar.gz"
    sha256 "080bf8e2cf1a2b907634761c2eaefbe83b69930c94c66ad11b65a8252959f912"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/75/fb/2f594e5364f9c986b2c89eb662fc6067292cb3df2b88ae31c939b9138bb9/smmap-3.0.4.tar.gz"
    sha256 "9c98bbd1f9786d22f14b3d4126894d56befb835ec90cef151af566c7e19b5d24"
  end


  def install
    virtualenv_install_with_resources
    bin.install_symlink "#{libexec}/bin/git-sweep"
  end

end
