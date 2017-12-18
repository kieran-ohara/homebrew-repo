class GoJira < Formula
	desc "simple jira command line client in Go"
	homepage "https://github.com/Netflix-Skunkworks/go-jira"
	url "https://github.com/Netflix-Skunkworks/go-jira/releases/download/v1.0.14/jira-darwin-10.6-amd64"
	sha256 "081bde36d2b5fd4f068e01b0179bae55db99b489b77a6577a01f448f423e16b57"
	version "1.0.14"

	depends_on "go" => :build

	def install
		bin.install "jira-darwin-10.6-amd64" => "jira"
	end
end
