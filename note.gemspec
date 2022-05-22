# frozen_string_literal: true

require_relative "lib/note/version"

Gem::Specification.new do |spec|
  spec.name = "note"
  spec.version = Note::VERSION
  spec.authors = ["Graham Lewis"]
  spec.email = ["grahamcharleslewis@gmail.com"]

  spec.summary = "A CLI for creating and managing notes"
  spec.description = "A command line application (CLI) that allows the user to create, read, update and delete notes"
  spec.homepage = "https://github.com/grahamcharleslewis/note"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/grahamcharleslewis/note"
  spec.metadata["changelog_uri"] = "https://github.com/grahamcharleslewis/note/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "thor", "~> 1.2.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
