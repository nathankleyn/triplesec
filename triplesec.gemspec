Gem::Specification.new do |spec|
  spec.name = 'triplesec'
  spec.version = '0.0.1'
  spec.extra_rdoc_files = ['README.md']
  spec.summary = 'TripleSec is a simple to use, open-source triple-paranoid symmetric encryption library.'
  spec.description = spec.summary + ' See https://github.com/nathankleyn/triplesec and https://keybase.io/triplesec for more information.'
  spec.author = 'Nathan Kleyn'
  spec.email = 'nathan@nathankleyn.com'
  spec.homepage = 'https://github.com/nathankleyn/triplesec'
  spec.files = Dir.glob('{bin,lib}/**/*') + %w[
    LICENSE
    README.md
  ]
  spec.require_path = 'lib'
  spec.bindir = 'bin'

  spec.add_dependency('scrypt', '~> 1.2')
  spec.add_dependency('sha3', '~> 0.2')
  spec.add_dependency('twofish', '~> 1.0')
  spec.add_dependency('salsa20', '~> 0.1')

  spec.add_development_dependency('rspec', '~> 3.0')
end
