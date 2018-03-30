# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primes_table/version'

Gem::Specification.new do |spec|
  spec.name          = 'primes_table'
  spec.version       = PrimesTable::VERSION
  spec.authors       = ['Kelvin Smith']
  spec.email         = ['oneKelvinSmith@gmail.com']

  spec.summary       = 'Prints out the multiplication table' \
                       ' of the first n prime numbers.'
  spec.homepage      = 'https://github.com/oneKelvinSmith/primes_table'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = ['primes_table']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry',     '~> 0.11'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.54'
end
