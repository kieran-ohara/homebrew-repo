cask 'wally-cli' do
  desc "The Flash(ing tool)"
  homepage "https://ergodox-ez.com/pages/wally"
  version "1.1.3"
  sha256 "3e6327f23743e3163a7bed4130f73830ecaeea400098003354ec8c63e0010095"
  url "https://github.com/zsa/wally/releases/download/#{version}-osx/wally-osx-#{version}.dmg"
  app 'Wally.app'
end
