class PowerlineStatus < Formula
    desc "Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, tmux, IPython, Awesome and Qtile."
    url "https://github.com/powerline/powerline/archive/2.6.tar.gz"
    sha256 "c108f11fe10dc910febb94b87d3abded85d4363fb950366a9e30282b9ba7c272"
    version "2.6"

    depends_on "python" if MacOS.version <= :snow_leopard

    resource "powerline-status" do
        url "https://files.pythonhosted.org/packages/a0/13/2b84133b6131d16c33a1c57a8e3ccf88dc9a10a6965fc992e628a9bd825f/powerline-status-2.6.tar.gz"
        sha256 "3f460a72b69fcfad74646c17759f851a721d243415c11e1dbf60c5b74dc1d2c3"
    end

    include Language::Python::Virtualenv

    def install
        virtualenv_install_with_resources
        bin.install_symlink "#{libexec}/bin/powerline"
        bin.install_symlink "#{libexec}/bin/powerline-config"
        bin.install_symlink "#{libexec}/bin/powerline-daemon"
        bin.install_symlink "#{libexec}/bin/powerline-lint"
        bin.install_symlink "#{libexec}/bin/powerline-render"
    end
end
