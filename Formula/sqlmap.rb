class Sqlmap < Formula
    desc "Hack dat SQL."
    url "https://files.pythonhosted.org/packages/e8/92/c9db4f17725f4541e82a36352007cae15b52f56b6a946f7704aba7edfb51/sqlmap-1.1.12.tar.gz"
    sha256 "86a1078ceb1e79f891633c7e4c7b07949fd9135a0e4c0738abd5111e2e6b96c0"
    version "1.1.12"

    resource "sqlmap" do
        url "https://files.pythonhosted.org/packages/e8/92/c9db4f17725f4541e82a36352007cae15b52f56b6a946f7704aba7edfb51/sqlmap-1.1.12.tar.gz"
        sha256 "86a1078ceb1e79f891633c7e4c7b07949fd9135a0e4c0738abd5111e2e6b96c0"
    end

    include Language::Python::Virtualenv

    def install
        virtualenv_install_with_resources
        bin.install_symlink "#{libexec}/bin/sqlmap"
    end
end
