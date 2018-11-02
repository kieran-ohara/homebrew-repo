require 'formula'
require 'tmpdir'

class AmazonEcrCredentialHelper < Formula
  homepage 'https://github.com/awslabs/amazon-ecr-credential-helper'
  url "https://github.com/awslabs/amazon-ecr-credential-helper/archive/v0.1.0.tar.gz"
  sha256 'fa8a1e442fea42aab777c318a0c211e5cfc4572cafe22cc0ac8d1fd23a271e50'
  version '0.1.0'
  depends_on 'go' => :build

  def install
    Dir.mktmpdir('docker-credential-ecr-login') do |tmp_dir|
      ENV['GOPATH'] = tmp_dir
      ENV['PATH'] = [File.join(tmp_dir, 'bin'), ENV['PATH']].join(':')
      pkg_dir = File.join(tmp_dir, 'src/github.com/awslabs/amazon-ecr-credential-helper')

      system 'mkdir', '-p', File.dirname(pkg_dir)
      system 'ln', '-s', Dir.pwd, pkg_dir
      system "cd #{pkg_dir} && make"
      bin.install 'bin/local/docker-credential-ecr-login'
    end
  end

  def caveats
<<-EOS
Set the contents of your ~/.docker/config.json file to be:
{
    "credsStore": "ecr-login"
}
EOS
  end
end
