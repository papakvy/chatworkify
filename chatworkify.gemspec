# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative "lib/chatworkify/version"

Gem::Specification.new do |spec|
  spec.name          = "chatworkify"
  spec.version       = Chatworkify::VERSION
  spec.authors       = ["phunt"]
  spec.email         = ["phunt@runsystem.net"]

  spec.summary       = %q{Publish deployment notifications to Chatwork via the API}
  spec.description   = %q{Publish deployment notifications to Chatwork via the API}
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 1.9.1"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #   `git ls-files -z`.split("\x0").reject do |f|
  #     (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
  #   end
  # end
  # spec.files = Dir['lib/**/*.*']
  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'chatwork', '~> 0.1'
  # spec.add_dependency 'capistrano', '~> 3.2', '>= 3.2.0'

  spec.add_runtime_dependency 'capistrano', '~> 3.2', '>= 3.2.0'
  # spec.add_runtime_dependency 'pry', '~> 0.10.4'

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'rake', '~> 1'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
