class AwscliWormholeCredentials < Formula
  desc "Use AWS CLI with BBC AWS accounts. "
  homepage "https://github.com/kieran-bamforth/awscli-wormhole-credentials"
  url "https://github.com/kieran-bamforth/awscli-wormhole-credentials/archive/1.0.1.tar.gz"
  sha256 "91974702f1938359316fc95d8edf2852797338710f3ba140ab75afe74df6f499"

  depends_on "httpie"

  def install
      bin.install "awscli-wormhole-credentials.sh" => "awscli-wormhole-credentials"
  end

end
