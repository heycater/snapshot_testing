lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "snapshot_testing/version"

Gem::Specification.new do |spec|
  spec.name          = "snapshot_testing"
  spec.version       = SnapshotTesting::VERSION
  spec.authors       = ["Ray Zane"]
  spec.email         = ["raymondzane@gmail.com"]

  spec.summary       = %q{Proper snapshot support for RSpec.}
  spec.description   = %q{Create snapshots of your data for simpler testing.}
  spec.homepage      = "https://github.com/rzane/snapshot_testing"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.4.0'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "minitest", "~> 5.11"
  spec.add_development_dependency "test-unit", "~> 3.2"
  spec.add_development_dependency "simplecov", "~> 0.17"
end
