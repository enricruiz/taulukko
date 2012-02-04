$:.push File.expand_path("../lib", __FILE__)
require "taulukko/version"

Gem::Specification.new do |s|
  s.name        = 'taulukko'
  s.version     = Taulukko::VERSION
  s.summary     = "Generates easy grepable and cutable tables"
  s.description = "Generates easy grepable and cutable tables"
  s.authors     = ["Enric Ruiz"]
  s.email       = ["enric.ruizmartinez@gmail.com"]
  s.homepage    = "http://www.github.com/enricruiz/taulukko"
  s.files       = ["lib/taulukko.rb"]
end
