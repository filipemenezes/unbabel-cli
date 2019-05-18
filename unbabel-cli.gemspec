# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unbabel/cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'unbabel-cli'
  spec.version       = Unbabel::CLI::VERSION
  spec.authors       = ['Filipe Menezes']
  spec.email         = ['filipepmenezes@gmail.com']

  spec.summary       = 'Unbabel Backend Challenge'
  spec.description   = 'Engineering Challenge for Backend candidates'
  spec.homepage      = 'https://github.com/filipemenezes/unbabel-cli'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = ['unbabel-cli']
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.20'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.69.0'
end
