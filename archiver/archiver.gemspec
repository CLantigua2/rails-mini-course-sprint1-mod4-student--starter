lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "archiver/version"

Gem::Specification.new do |spec|
  spec.name          = "archiver"
  spec.version       = Archiver::VERSION
  spec.authors       = ["Clantigua2"]
  spec.email         = ["clantigua954@gmail.com"]

  spec.summary       = "test gem"
  spec.description   = "test gem"
  spec.homepage      = "http://example.com"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/CLantigua2/rails-mini-course-sprint1-mod4-student--starter"
  spec.metadata["changelog_uri"] = "https://github.com/CLantigua2/rails-mini-course-sprint1-mod4-student--starter"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"

  # add activerecord as a dependency
  spec.add_dependency "activerecord", ">= 4.0"
end
