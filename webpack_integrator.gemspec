
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "webpack_integrator/version"

Gem::Specification.new do |spec|
  spec.name          = "webpack_integrator"
  spec.version       = WebpackIntegrator::VERSION
  spec.authors       = ["alwesam"]
  spec.email         = ["alwesam@gmail.com"]

  spec.summary       = %q{Custom Rails generator to produce files for webpack integration}
  spec.description   = %q{See README.md file}
  spec.homepage      = "https://github.com/alwesam/webpack_integrator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rails", "~> 5.1"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
