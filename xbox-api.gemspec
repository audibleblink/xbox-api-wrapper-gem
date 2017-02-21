# -*- encoding: utf-8 -*-
require File.expand_path('../lib/xbox-api/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Flores", "Vladut Radulescu"]
  gem.email         = ["xbox@games.directory"]
  gem.description   = %q{An Xbox API wrapper that allows one to fetch profiles, games, achievements and friends data}
  gem.summary       = %q{A Ruby wrapper for the xboxapi.com API}
  gem.homepage      = "https://github.com/games-directory/api-xbox"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "xbox-api"
  gem.require_paths = ["lib"]
  gem.version       = XboxApi::Wrapper::VERSION

  gem.add_runtime_dependency("thor")
  gem.add_runtime_dependency("yajl-ruby")
  gem.add_development_dependency("rspec")
  gem.add_development_dependency("vcr")
  gem.add_development_dependency("webmock")
  gem.add_development_dependency("dotenv")
  gem.add_development_dependency("codeclimate-test-reporter")
end
