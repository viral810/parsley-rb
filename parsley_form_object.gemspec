require_relative 'lib/parsley_form_object/version'

Gem::Specification.new do |spec|
  spec.name          = "parsley_form_object"
  spec.version       = ParsleyFormObject::VERSION
  spec.authors       = ["Viral Patel"]
  spec.email         = ["pviral810@gmail.com"]

  spec.summary       = "Form objects made simple for rails applications"
  spec.description   = "A useful object to implement form object interface."
  spec.homepage      = "https://github.com/viral810/parsley_form_object"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/viral810/parsley_form_object"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/viral810/parsley_form_object"
  spec.metadata["changelog_uri"] = "https://github.com/viral810/parsley_form_object/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
