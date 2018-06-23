class AwscliWormholeCredentials < Formula
  desc "Use AWS CLI with BBC AWS accounts. "
  homepage "https://github.com/bbc/awscli-wormhole-credentials"
  url "https://github.com/bbc/awscli-wormhole-authentication/releases/download/1.0.1/awscli-wormhole-credentials.sh", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c86d9b954a6c5623671daf1f4a1a2daee98ee731efc77f8d1b700a4d6ca7d972"

  depends_on "httpie"
  depends_on "jq"

  def install
      bin.install "awscli-wormhole-credentials.sh" => "awscli-wormhole-credentials"
  end

end
