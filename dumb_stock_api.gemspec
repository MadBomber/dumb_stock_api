# frozen_string_literal: true

require_relative "lib/dumb_stock_api/version"

Gem::Specification.new do |spec|
  spec.name     = "dumb_stock_api"
  spec.version  = DumbStockAPI::VERSION
  spec.authors  = ["Dewayne VanHoozer"]
  spec.email    = ["dvanhoozer@gmail.com"]

  spec.summary      = "Access the dumbstockapi.com website"
  spec.description  = "Access the dumbstockapi.com website"
  spec.homepage     = "https://github.com/MadBomber/dumb_stock_api"
  spec.license      = "MIT"

  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["allowed_push_host"]  = "https://rubygems.org"
  spec.metadata["homepage_uri"]       = spec.homepage
  spec.metadata["source_code_uri"]    = spec.homepage
  spec.metadata["changelog_uri"]      = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end

  spec.bindir         = "bin"
  spec.executables    = []
  spec.require_paths  = ["lib"]

  spec.add_dependency "csv"
  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
