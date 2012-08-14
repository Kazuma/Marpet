# -*- encoding: utf-8 -*-
require File.expand_path('../lib/marpet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kazuma Muramatsu"]
  gem.email         = ["muramatu.k@gmail.com"]
  gem.description   = %q{Marpet is convert HTML into Markdown using the redcarpet. }
  gem.summary       = %q{Marpet is convert HTML into Markdown using the redcarpet. }
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "marpet"
  gem.require_paths = ["lib"]
  gem.version       = Marpet::VERSION

  gem.add_runtime_dependency 'redcarpet'
  gem.add_runtime_dependency 'coderay'
end
