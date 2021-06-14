# -*- ruby -*-
# encoding: utf-8

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "googleauth/version"

Gem::Specification.new do |gem|
  gem.name          = "googleauth"
  gem.version       = Google::Auth::VERSION
  gem.authors       = ["Tim Emiola"]
  gem.email         = "temiola@google.com"
  gem.homepage      = "https://github.com/google/google-auth-library-ruby"
  gem.summary       = "Google Auth Library for Ruby"
  gem.license       = "Apache-2.0"
  gem.description   = <<-DESCRIPTION
   Allows simple authorization for accessing Google APIs.
   Provide support for Application Default Credentials, as described at
   https://developers.google.com/accounts/docs/application-default-credentials
  DESCRIPTION

  gem.files         = `git ls-files`.split "\n"
  gem.test_files    = `git ls-files -- spec/*`.split "\n"
  gem.executables   = `git ls-files -- bin/*.rb`.split("\n").map do |f|
    File.basename f
  end
  gem.require_paths = ["lib"]
  gem.platform      = Gem::Platform::RUBY
  gem.required_ruby_version = ">= 2.4.0"

  # Faraday's dependency is purposefully reduced here for the same reason as
  # JWT below.
  gem.add_dependency "faraday", ">= 0.12", "< 1.0"

  # jwt dependency is purposefully reduced here to a lower version as
  # we can not update jwt in Realvolve application at this moment as
  # other gems like oauth2 have a strict dependency on the current version of
  # the jwt gem in Realvolve
  gem.add_dependency "jwt", "~> 0.1.8"
  gem.add_dependency "memoist", "~> 0.16"
  gem.add_dependency "multi_json", "~> 1.11"
  gem.add_dependency "os", ">= 0.9", "< 2.0"
  gem.add_dependency "signet", "~> 0.12"
end
