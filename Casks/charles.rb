cask 'charles' do
    version '3.11.6'
  sha256 'd6eb4cd1621618356861b31088877ca01a826c0ee6e3d7bd8cd6d51e8d6e4ad8'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'c6d3fb057b198f1d0563d4218d4e36b48df752251aabffe78ea60aac5a72c7a2'
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.Charles.plist',
                '~/Library/Preferences/com.xk72.charles.config',
                '~/Library/Saved Application State/com.xk72.Charles.savedState',
              ]
end
