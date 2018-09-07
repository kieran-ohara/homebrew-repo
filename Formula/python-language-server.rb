class SlackCli < Formula
  desc "An implementation of the Language Server Protocol for Python"
  homepage "https://github.com/palantir/python-language-server"
  url "https://github.com/palantir/python-language-server/archive/0.21.2.tar.gz"
  sha256 "0b81bf42200c7d11e066907040314038525fa53333ac98e7691485166db60fde"
  version "0.21.2"

  include Language::Python::Virtualenv

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/7c/69/c2ce7e91c89dc073eb1aa74c0621c3eefbffe8216b3f9af9d3885265c01c/configparser-3.5.0.tar.gz"
    sha256 "5308b47021bc2340965c371f0f058cc6971a04502638d4244225c49d80db273a"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/00/2b/8d082ddfed935f3608cc61140df6dcbf0edea1bc3ab52fb6c29ae3e81e85/future-0.16.0.tar.gz"
    sha256 "e39ced1ab767b5936646cedba8bcce582398233d6a627067d4c6a454c90cfedb"
  end

  resource "futures" do
    url "https://files.pythonhosted.org/packages/1f/9e/7b2ff7e965fc654592269f2906ade1c7d705f1bf25b7d469fa153f7d19eb/futures-3.2.0.tar.gz"
    sha256 "9ec02aa7d674acb8618afb127e27fde7fc68994c0437ad759fa094a574adb265"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/49/2f/cdfb8adc8cfc9fc2e5673e724d9b9098619dc1a2772cc6b8af34c6b7bef9/jedi-0.12.1.tar.gz"
    sha256 "b409ed0f6913a701ed474a614a3bb46e6953639033e31f769ca7581da5bd1ec1"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/46/31/60de7c9cbb97cac56b193a5b61a1fd4d21df84843a570b370ec34781316b/parso-0.3.1.tar.gz"
    sha256 "35704a43a3c113cce4de228ddb39aab374b8004f4f2407d070b6a2ca784ce8a2"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/a1/83/ef7d976c12d67a5c7a5bc2a47f0501c926cabae9d9fcfdc26d72abc9ba15/pluggy-0.7.1.tar.gz"
    sha256 "95eb8364a4708392bae89035f45341871286a333f749c3141c20573d2b3876e1"
  end

  resource "python-jsonrpc-server" do
    url "https://files.pythonhosted.org/packages/d6/d7/3313dad29ff151e738d1804f496c0f93e83ee5cc35cb8dee17e44588845d/python-jsonrpc-server-0.0.1.tar.gz"
    sha256 "ebebaa68b732c9d0aa024ffba2c3baca8b5704530f81d5a894a1ab6981b492c7"
  end

  resource "python-language-server" do
    url "https://files.pythonhosted.org/packages/9f/1d/2817b5dc2dd77f897410a11c1c9e2a6d96b3273c53d4219dd9edab7882af/python-language-server-0.21.2.tar.gz"
    sha256 "fa9162acb1402b807132d7288b7f521db2bd666d63505d8a4d9464d4b8488c52"
  end

  def install
    virtualenv_install_with_resources
    bin.install_symlink "#{libexec}/bin/pyls"
  end

end
