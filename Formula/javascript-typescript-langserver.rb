require "language/node"

class JavascriptTypescriptLangserver < Formula
  version "2.11.3"
  desc "JavaScript and TypeScript code intelligence through the Language Server Protocol"
  homepage "https://github.com/sourcegraph/javascript-typescript-langserver"
  url "https://registry.npmjs.org/javascript-typescript-langserver/-/javascript-typescript-langserver-2.11.3.tgz"
  sha256 "d69c99918c0ea3b7caab7d45ff9618f21c40968eea1b1863aef442c88ea3a039"

  plist_options :startup => true

  depends_on "node"

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
          <string>/usr/local/bin/node</string>
          <string>/usr/local/bin/javascript-typescript-langserver</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>StandardErrorPath</key>
      <string>/tmp/javascript-typescript-langserver.stderr</string>
      <key>StandardOutPath</key>
      <string>/tmp/javascript-typescript-langserver.stdout</string>
  </dict>
  </plist>
  EOS
  end

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
