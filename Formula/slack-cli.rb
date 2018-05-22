class SlackCli < Formula
    desc "Slack CLI for productive developers"
    homepage "https://github.com/regisb/slack-cli"
    url "https://files.pythonhosted.org/packages/10/00/8a4b5dda9710e1a1e82b9c5b31fe14161710a563add0ec003240dcd38f45/slack-cli-2.0.3.tar.gz"
    sha256 "1569947775202fa564e3b048aa416b190a115108c18b6a790ae6d250cd98c9c6"
    version "0.0.1"

    include Language::Python::Virtualenv


    resource "appdirs" do
        url "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz"
        sha256 "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92"
    end

    resource "certifi" do
        url "https://files.pythonhosted.org/packages/4d/9c/46e950a6f4d6b4be571ddcae21e7bc846fcbb88f1de3eff0f6dd0a6be55d/certifi-2018.4.16.tar.gz"
        sha256 "13e698f54293db9f89122b0581843a782ad0934a4fe0172d2a980ba77fc61bb7"
    end

    resource "chardet" do
        url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
        sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
    end

    resource "idna" do
        url "https://files.pythonhosted.org/packages/f4/bd/0467d62790828c23c47fc1dfa1b1f052b24efdf5290f071c7a91d0d82fd3/idna-2.6.tar.gz"
        sha256 "2c6a5de3089009e3da7c5dde64a141dbc8551d5b7f6cf4ed7c2568d0cc520a8f"
    end

    resource "requests" do
        url "https://files.pythonhosted.org/packages/b0/e1/eab4fc3752e3d240468a8c0b284607899d2fbfb236a56b7377a329aa8d09/requests-2.18.4.tar.gz"
        sha256 "9c443e7324ba5b85070c4a818ade28bfabedf16ea10206da1132edaa6dda237e"
    end

    resource "six" do
        url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
        sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
    end

    resource "slack-cli" do
        url "https://files.pythonhosted.org/packages/10/00/8a4b5dda9710e1a1e82b9c5b31fe14161710a563add0ec003240dcd38f45/slack-cli-2.0.3.tar.gz"
        sha256 "1569947775202fa564e3b048aa416b190a115108c18b6a790ae6d250cd98c9c6"
    end

    resource "slacker" do
        url "https://files.pythonhosted.org/packages/1f/14/e0d311f8277c826cf3a1a1c8676e88676d696a5271e18917be812b9a6fd9/slacker-0.9.65.tar.gz"
        sha256 "646d8fb2ca04858374da1b54e9818f88dc2b254deb0f74bf0f3911773e7eaf94"
    end

    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/ee/11/7c59620aceedcc1ef65e156cc5ce5a24ef87be4107c2b74458464e437a5d/urllib3-1.22.tar.gz"
        sha256 "cc44da8e1145637334317feebd728bd869a35285b93cbb4cca2577da7e62db4f"
    end

    resource "websocket-client" do
        url "https://files.pythonhosted.org/packages/c9/61/ca78ba8e931bd148725434298196c6a4d032e29268fd36c478ffed318a2c/websocket_client-0.39.0.tar.gz"
        sha256 "87c6ba46565d62bcdbc5ac1d78c9a6d66663560ab2ca566cf9c6ac406de13425"
    end

    def install
        virtualenv_install_with_resources
        bin.install_symlink "#{libexec}/bin/sqlmap"
    end
end
