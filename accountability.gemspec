$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "accountability/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "accountability"
  s.version     = Accountability::VERSION
  s.authors     = ["Richard D. Jordan"]
  s.email       = ["richarddjordan+gems@gmail.com"]
  s.homepage    = "https://github.com/RichardJordan/accountability"
  s.summary     = "Connect Users with Accounts via Roles with Abilities"
  s.description = "Solves the problem of setting up users and accounts allowing for permissions changes later"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "sqlite3"
end
