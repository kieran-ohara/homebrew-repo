class GitSweep < Formula
    desc "A command-line tool that helps you clean up Git branches that have been merged into master."
    url "https://github.com/arc90/git-sweep/archive/0.1.1.tar.gz"
    sha256 "9e8763bc8ce8743564c333758a5875090c7b069a353efc8bd81c108da7b4348d"
    version "0.1.1"

    depends_on "python" if MacOS.version <= :snow_leopard

    include Language::Python::Virtualenv

    resource "git-sweep" do
        url "https://files.pythonhosted.org/packages/68/71/a4b06ba2cd275a2cc1c1eef46ae655517c6b8b05326e8bf60b89e01f2a59/git-sweep-0.1.1.tar.gz"
        sha256 "cd29f1c37247b05aeef5f399489657f973aed78e2e2740da20a62502da0757b3"
    end

    resource "gitdb2" do
        url "https://files.pythonhosted.org/packages/84/11/22e68bd46fd545b17d0a0b200cf75c20e9e7b817726a69ad5f3070fd0d3c/gitdb2-2.0.3.tar.gz"
        sha256 "b60e29d4533e5e25bb50b7678bbc187c8f6bcff1344b4f293b2ba55c85795f09"
    end

    resource "GitPython" do
        url "https://files.pythonhosted.org/packages/1c/08/a2b5ba4ad43c4c33066ced2c45958593ab2554bb0d09f7ecb9bf9092e5f6/GitPython-2.1.8.tar.gz"
        sha256 "ad61bc25deadb535b047684d06f3654c001d9415e1971e51c9c20f5b510076e9"
    end

    resource "smmap2" do
        url "https://files.pythonhosted.org/packages/48/d8/25d9b4b875ab3c2400ec7794ceda8093b51101a9d784da608bf65ab5f5f5/smmap2-2.0.3.tar.gz"
        sha256 "c7530db63f15f09f8251094b22091298e82bf6c699a6b8344aaaef3f2e1276c3"
    end

    def install
        virtualenv_install_with_resources
        bin.install_symlink "#{libexec}/bin/git-sweep"
    end
end
