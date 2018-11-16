class Up < Formula
  desc "Ultimate Plumber is a tool for writing Linux pipes with instant live preview"
  homepage "https://github.com/akavel/up"
  version '0.1.0'
  url "https://github.com/akavel/up/releases/download/v0.3.1/up-darwin"
  sha256 "fd75a2fa6a6521bf06e9dd77604eeff17083e87e8924b04073db049cd1928386"

  def install
      bin.install "up-darwin" => "up"
  end

end
