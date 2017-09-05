# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GoJira < Formula
  desc "simple jira command line client in Go"
  homepage "https://github.com/kieran-bamforth/go-jira"
  url "https://github.com/kieran-bamforth/go-jira/archive/kb0.1.15.tar.gz"
  sha256 "fce5903c2c2cd0382ed5a3bc30d436df88a8f76f5b98a7c7e6ccaf68218dc360"

  depends_on "go" => :build

  def install
    system "make", "install", "BIN=#{prefix}/bin/jira"
  end

end
