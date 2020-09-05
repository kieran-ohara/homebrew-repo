class PythonLanguageServer < Formula
  desc "An implementation of the Language Server Protocol for Python"
  homepage "https://github.com/palantir/python-language-server"
  url "https://github.com/palantir/python-language-server/archive/0.34.1.tar.gz"
  sha256 "e340614e2fb8428a5e12ebd40fa017832fb34627b43cab8d14b18fe6aced870c"
  version "0.34.1"
  plist_options :startup => true
  depends_on "python"

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/local/bin/pyls</string>
      <string>--tcp</string>
      <string>--port</string>
      <string>2090</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>StandardErrorPath</key>
    <string>/tmp/pyls.stderr</string>
    <key>StandardOutPath</key>
    <string>/tmp/pyls.stdout</string>
  </dict>
  </plist>
  EOS
  end

  include Language::Python::Virtualenv

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/39/67/50d1653038dafe06ca2cc55c4598c5f8318d519c12a7a288d7826280ee22/jedi-0.17.2.tar.gz"
    sha256 "86ed7d9b750603e4ba582ea8edc678657fb4007894a12bcf6f4bb97892f31d20"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/40/01/e0b8d2168fb299af90a78a5919257f821e5c21399bf0906c14c9e573db3f/parso-0.7.1.tar.gz"
    sha256 "caba44724b994a8a5e086460bb212abc5a8bc46951bf4a9a1210745953622eb9"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/f8/04/7a8542bed4b16a65c2714bf76cf5a0b026157da7f75e87cc88774aa10b14/pluggy-0.13.1.tar.gz"
    sha256 "15b2acde666561e1298d71b523007ed7364de07029219b604cf808bfa1c765b0"
  end

  resource "python-jsonrpc-server" do
    url "https://files.pythonhosted.org/packages/0b/ed/ce08d4ba6048a54935797f1fcc63ce30135475cfc858778c286a0be21433/python-jsonrpc-server-0.3.4.tar.gz"
    sha256 "c73bf5495c9dd4d2f902755bedeb6da5afe778e0beee82f0e195c4655352fe37"
  end

  resource "python-language-server" do
    url "https://files.pythonhosted.org/packages/5b/d2/9a2c8fbafad6fc0e8cfc110010512a2248a773f7e94573ed7899d2b8034a/python-language-server-0.34.1.tar.gz"
    sha256 "b96ff466b5aa24e212493de863899298f229a9e250e7353972563c7f2495d23d"
  end

  resource "ujson" do
    url "https://files.pythonhosted.org/packages/16/c4/79f3409bc710559015464e5f49b9879430d8f87498ecdc335899732e5377/ujson-1.35.tar.gz"
    sha256 "f66073e5506e91d204ab0c614a148d5aa938bdbf104751be66f8ad7a222f5f86"
  end

  resource "rope" do
    url "https://files.pythonhosted.org/packages/ba/44/714486676aeb10de586f892348973d2e6b7c2be4eaff434caaaa45e19e14/rope-0.17.0.tar.gz"
    sha256 "658ad6705f43dcf3d6df379da9486529cf30e02d9ea14c5682aa80eb33b649e1"
  end

  def install
    virtualenv_install_with_resources
    bin.install_symlink "#{libexec}/bin/pyls"
  end

end
