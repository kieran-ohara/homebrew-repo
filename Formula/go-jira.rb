class GoJira < Formula
	desc "simple jira command line client in Go"
	homepage "https://github.com/Netflix-Skunkworks/go-jira"
	url "https://github.com/Netflix-Skunkworks/go-jira/releases/download/v1.0.14/jira-darwin-10.6-amd64"
	sha256 "2089deb4b32995a634f3172341b28d95d5ac3ca2b6cc0a45458ce1809826fc7f"
	version "1.0.15"

	depends_on "go" => :build

	def install
		bin.install "jira-darwin-10.6-amd64" => "jira"
	end
end
