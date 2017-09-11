# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GoJira < Formula
	desc "simple jira command line client in Go"
	homepage "https://github.com/Netflix-Skunkworks/go-jira"
	url "https://github.com/Netflix-Skunkworks/go-jira/releases/download/v1.0.5/jira-darwin-10.6-amd64"
	sha256 "b9d975396bb6570489750a806ada87fc2a00a342cb65efe373d3d24748885bb3"
	version "1.0.5"

	depends_on "go" => :build

	def install
		bin.install "jira-darwin-10.6-amd64" => "jira"
	end
end
