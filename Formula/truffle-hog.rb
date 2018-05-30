class TruffleHog < Formula
  desc "Searches through git repositories for high entropy strings and secrets, digging deep into commit history"
  homepage "https://github.com/dxa4481/truffleHog"
  url "https://github.com/dxa4481/truffleHog/archive/master.zip"
  version "1.0.0"
  sha256 "af58e9356c203a55eaed68a78bec66150594f54821051550e8c9c2f35a97c924"

  resource "gitdb2" do
    url "https://files.pythonhosted.org/packages/84/11/22e68bd46fd545b17d0a0b200cf75c20e9e7b817726a69ad5f3070fd0d3c/gitdb2-2.0.3.tar.gz"
    sha256 "b60e29d4533e5e25bb50b7678bbc187c8f6bcff1344b4f293b2ba55c85795f09"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/21/13/8d0981cee1c5b9dd7fa9f836ed7c304891686f300572c03a49e52c07c04c/GitPython-2.1.1.tar.gz"
    sha256 "e96f8e953cf9fee0a7599fc587667591328760b6341a0081ef311a942fc96204"
  end

  resource "smmap2" do
    url "https://files.pythonhosted.org/packages/48/d8/25d9b4b875ab3c2400ec7794ceda8093b51101a9d784da608bf65ab5f5f5/smmap2-2.0.3.tar.gz"
    sha256 "c7530db63f15f09f8251094b22091298e82bf6c699a6b8344aaaef3f2e1276c3"
  end

  resource "truffleHog" do
    url "https://files.pythonhosted.org/packages/92/f2/129fd5d14a7ae8b2d7717ffcffb63a0666228a2f452f619df5ad63a610f8/truffleHog-2.0.95.tar.gz"
    sha256 "0abbd455cc85b3925fa32104c1c9361ababc6d4cb9b8d4ba42b7baeb28cdeccf"
  end

  resource "truffleHogRegexes" do
    url "https://files.pythonhosted.org/packages/85/0d/52c6b4b2362c6330ddde58e2fa899937e4084916ac1918851d19bca4d5c8/truffleHogRegexes-0.0.4.tar.gz"
    sha256 "9fc07f682fa069b92c6b2b53cf74c37933d33b7c9f56555f009c40b216d37927"
  end

  include Language::Python::Virtualenv

  def install
      virtualenv_install_with_resources
      bin.install_symlink "#{libexec}/bin/trufflehog"
  end
end
