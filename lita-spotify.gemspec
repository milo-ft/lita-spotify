Gem::Specification.new do |spec|
  spec.name          = "lita-spotify"
  spec.version       = "0.0.1"
  spec.authors       = ["Emilio Figueroa"]
  spec.email         = ["emiliofigueroatorres@gmail.com"]
  spec.description   = %q{A lita handler for playing music with Spotify.}
  spec.summary       = %q{A lita handler for playing music with Spotify.}
  spec.homepage      = "https://github.com/milo-ft/lita-spotify"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 3.0"
  spec.add_runtime_dependency "spotify", "~> 12.5.3"
  spec.add_runtime_dependency "meta-spotify", "~> 0.3.2"
  spec.add_runtime_dependency "json", "~> 1.8.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
  gem.add_development_dependency 'shoulda'
  gem.add_development_dependency 'fakeweb', ["~> 1.3"]
end
