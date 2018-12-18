class RedisCli < Formula
  desc "Install the redis-cli only."
  homepage "https://github.com/ringohub/homebrew-redis-cli"
  version "4.0.1"
  sha256 "9824a7906b9f742c34a205e552d7b8fcc4b2790832a6b1a14907e37f435328b0"
  url "https://github.com/antirez/redis/archive/#{version}.tar.gz"

  def install
    system "make redis-cli"
    bin.install "./src/redis-cli"
  end

  test do
    system "#{bin}/redis-cli"
  end
end
