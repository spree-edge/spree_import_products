# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_import_products/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_import_products'
  s.version     = SpreeImportProducts.version
  s.summary     = 'A spree extension that provides hustle free product import functionality'
  s.description = 'Import spree product via excel sheet'
  s.required_ruby_version = '>= 2.5'

  s.author    = 'Vishal Garg'
  s.email     = 'vishal@bluebash.co'
  s.homepage  = 'https://github.com/spree-edge/spree_import_products'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 4.4.0'
  s.add_dependency 'rails', '~> 6.1.4', '>= 6.1.4'
  s.add_dependency 'spree', spree_version
  s.add_dependency 'spree_backend', spree_version
  s.add_dependency 'spree_extension'
  s.add_dependency "roo", "~> 2.9.0"

  s.add_development_dependency 'spree_dev_tools'
end
