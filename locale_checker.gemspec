# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locale_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "locale_checker"
  spec.version       = LocaleChecker::VERSION
  spec.authors       = ["Jan Sandbrink"]
  spec.email         = ["nobodysnightmare@gmail.com"]

  spec.summary       = %q{Checks whether your localizations are consistent.}
  spec.homepage      = 'https://github.com/NobodysNightmare/locale_checker'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
