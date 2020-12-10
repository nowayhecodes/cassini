require_relative 'lib/cassini/version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cassini'
  spec.version       = Cassini::VERSION
  spec.authors       = ['Gustavo Cavalcante']
  spec.email         = ['nowayhecodes@gmail.com']
  spec.summary       = 'A service discovery tool with load balancing'
  spec.homepage      = 'https://github.com/nowayhecodes/cassini'
  spec.license       = 'MIT'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/nowayhecodes/cassini'
  spec.metadata['changelog_uri']   = ''

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    'git ls-files -z'.split('\x0').reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir      = 'bin'
  spec.executables = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.require_paths = ["lib", "bin"]
end
