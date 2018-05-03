class AwscliWormholeCredentials < Formula
  desc "Use AWS CLI with BBC AWS accounts. "
  homepage "https://github.com/kieran-bamforth/awscli-wormhole-credentials"
  url "https://github.com/kieran-bamforth/awscli-wormhole-credentials/archive/1.0.0.tar.gz"
  sha256 "6f29f83549926e8fe3d754f968746056c8c60a6c00ac8f0e8c4034501107b699"

  depends_on "httpie"

  def install
      bin.install "awscli-wormhole-credentials.sh" => "awscli-wormhole-credentials"
  end

end
