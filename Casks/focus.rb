cask 'focus' do
    version '1.8.3'
    sha256 'f2f0b12f05c10ce6283f62d15594993dd9fe81346da94e80b8c8577d1019825e'

    url "https://heyfocus.com/releases/Focus-#{version}.zip"
    appcast 'https://heyfocus.com/appcast.xml',
        checkpoint: '250a501501d4e891c7ed828cf8f6f7f3aea2c8609052d0f6dd5919bb3d9892e6'
    name 'Focus'
    homepage 'https://heyfocus.com/'

    app 'Focus.app'

    uninstall quit: 'BradJasper.focus'

    zap delete: [
        '~/Library/Caches/BradJasper.focus/',
        '~/Library/Application Support/Focus/',
        '~/Library/Preferences/BradJasper.focus.plist',
    ]
end
